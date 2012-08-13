#!/usr/bin/vala --debug --verbose --save-temps --pkg augeas --vapidir=../src
/*
 * valac --debug --verbose --save-temps --pkg augeas --vapidir ../src augeas.vala
 */
using Augeas;

public class AugValaTest: Object {
	public static void test_match () {
		var aug = new Augeas.Tree ();
		var res = aug.match ("/files/etc/passwd");
		assert (res != null);
		assert (res.length == 1);
	}
	public static void test_span () {
		var aug = new Augeas.Tree ("/", null, Augeas.InitFlags.ENABLE_SPAN);
		string? filename;
		uint label_start, label_end, value_start, value_end, span_start, span_end;
		var res = aug.span ("/files/etc/passwd", out filename,
						out label_start, out label_end,
						out value_start, out value_end,
						out span_start, out span_end);
		assert (res == 0);
		assert (filename == "/etc/passwd");
	}
	public static void main (string[] args) {
		Test.init (ref args);
		Test.add_func ("/aug/vala/match", test_match);
		Test.add_func ("/aug/vala/span", test_span);
		Test.run ();
	}
}
