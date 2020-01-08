import 'package:dragable_flutter_list/dragable_flutter_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_samples/common/colors.dart';
import 'package:flutter_architecture_samples/model/data/page_module_data.dart';
import 'package:flutter_architecture_samples/utils/system_util.dart';
import 'package:flutter_architecture_samples/view/page/page_state.dart';
import 'package:flutter_architecture_samples/view/widget/custom_app_bar.dart';
import 'package:flutter_architecture_samples/viewmodel/setting_module_viewmodel.dart';

import '../../language.dart';

class SettingModulePage extends StatefulWidget {
  @override
  State createState() => SettingModuleState();
}

class SettingModuleState extends PageState<SettingModulePage> {
  final _viewModel = SettingModuleViewModel();

  @override
  void dispose() {
    _viewModel.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorRead,
      appBar: CustomAppBar(
        title: Text(
          AppText.of(context).moduleControl,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        color: Theme.of(context).accentColor,
        leftBtn: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => pop(context),
        ),
      ),
      body: StreamBuilder(
        stream: _viewModel.pageModules.stream,
        builder: (context, snapshot) {
          final List<PageModule> modules = snapshot.data ?? List();

          return DragAndDropList(
            modules.length,
            canBeDraggedTo: (_, __) => true,
            itemBuilder: (context, index) {
              final module = modules[index];

              switch (module.module) {

                case "read":
                  return _buildModuleItem(
                    icon: Icons.local_cafe,
                    title: AppText.of(context).read,
                    open: module.open,
                    onChanged: (b) =>
                        _viewModel.valueChange(b, module: module.module),
                  );

                case "collect":
                  return _buildModuleItem(
                    icon: Icons.favorite_border,
                    title: AppText.of(context).collect,
                    open: module.open,
                    onChanged: (b) =>
                        _viewModel.valueChange(b, module: module.module),
                  );
              }

              return Container();
            },
            onDragFinish: (before, after) =>
                _viewModel.indexChange(before, after),
          );
        },
      ),
    );
  }

  /// 页面模块选项
  Widget _buildModuleItem(
      {@required IconData icon,
      @required String title,
      @required bool open,
      @required Function(bool) onChanged}) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: Colors.white,
      child: Container(
        height: 56,
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Theme.of(context).accentColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                title,
                style: TextStyle(fontSize: 16, color: AppColor.colorText2),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Switch(
                  value: open,
                  onChanged: onChanged,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}