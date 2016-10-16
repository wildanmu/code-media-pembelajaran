var my_menu:ContextMenu = new ContextMenu();
my_menu.hideBuiltInItems();

var my_notice = new ContextMenuItem("Republic of Code");
var my_email = new ContextMenuItem("blue_chi@roc.com");
var my_copyright = new ContextMenuItem("Copyright - 2009");

my_copyright.enabled = false;
my_copyright.separatorBefore = true;

my_menu.customItems.push(my_notice, my_email, my_copyright);

contextMenu = my_menu;