import 'package:flutter/material.dart';
import 'package:flutter_ilk_deneme/02/cache/shared_manager.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateful<SharedLearn> {

  int _currentValue = 0;
  late final SharedManager _manager;

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    _initialze();
  }

  Future<void> _initialze() async {
    _changeLoading();
    await _manager.init();
    _changeLoading();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
      //final prefs = await SharedPreferences.getInstance();
      //final int? counter = prefs.getInt('counter');
      _onChangeValue(_manager.getString(SharedKey.counter) ?? '');
  }
  

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentValue.toString()),
        actions: [
          isLoading ? const Center(
            child: CircularProgressIndicator(
              color: Colors.grey,
            )
          ) : const SizedBox.shrink(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _saveValueButton(),
          _removeValueButton(),
        ],
      ),
      body: TextField(
        onChanged: (value) {
          _onChangeValue(value);
        },
      ),
    );
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () async {
        _changeLoading();
        await _manager.saveString(SharedKey.counter, _currentValue.toString());
        _changeLoading();
      }
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
      child: const Icon(Icons.highlight_remove),
      onPressed: () async {
        _changeLoading();
        await _manager.removeItem(SharedKey.counter);
        _changeLoading();
      }
    );
  }
}


// Generic
abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}