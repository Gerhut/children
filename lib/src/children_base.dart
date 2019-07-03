List<T> children<T>(List<T> list, {bool growable = false}) =>
    list.whereType<T>().toList(growable: growable);
