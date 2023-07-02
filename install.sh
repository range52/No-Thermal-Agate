SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

REPLACE = ""

print_modname() {
   ui_print "*******************************"
   ui_print "                               "
   ui_print "                               "
   ui_print "                               "
   ui_print "          range                "
   ui_print "         mediatek              "
   ui_print "         thermal               "
   ui_print "         disabler              "
   ui_print "         telegram:             "
   ui_print "     @range_is_darkness        "
   ui_print "                               "
   ui_print "                               "
   ui_print "                               "
   ui_print "*******************************"
}

on_install() {
   ui_print "- Extracting module files"
   unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
