import 'package:html/parser.dart' show parse;

List<String> parseAvaiableBagIds(String body) {
  var dom = parse(body);
  var bags = dom.querySelectorAll(
    "label.bag-check:not(.hidden)>input:not([disabled=disabled])"
  );

  return bags.map((bag) => bag.id.replaceAll("bag", "")).toList();
}