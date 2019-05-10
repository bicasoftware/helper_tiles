import 'package:flutter/material.dart';
import 'package:helper_tiles/tiles/default_list_tile.dart';

class DropDownTile<T> extends StatelessWidget {
  final String title;
  final IconData icon;
  final T value;
  final Function(T) onChanged;
  final Function(T) format;
  final List<T> listItems;

  const DropDownTile({
    Key key,
    @required this.title,
    @required this.value,
    @required this.onChanged,
    @required this.listItems,
    @required this.format,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      icon: icon ?? Icons.format_list_numbered,
      leading: Text(title),
      trailing: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          elevation: 4,
          value: value,
          onChanged: onChanged,
          items: listItems
              .map((item) => DropdownMenuItem<T>(
                    value: item,
                    child: Text(format(item) ?? ""),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
