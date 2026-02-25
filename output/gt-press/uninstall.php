<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GTPress');
delete_site_option('GTPress');
delete_option('gtpressMenu_default_menu');
delete_site_option('gtpressMenu_default_menu');
delete_option('gtpressMenu_default_submenu');
delete_site_option('gtpressMenu_default_submenu');
delete_option('gtpressMenu_disabled_menu_items');
delete_site_option('gtpressMenu_disabled_menu_items');
delete_option('gtpressMenu_disabled_submenu_items');
delete_site_option('gtpressMenu_disabled_submenu_items');
delete_option('gtpressMenu_disabled_metas');
delete_site_option('gtpressMenu_disabled_metas');
delete_option('GTTabs');
delete_site_option('GTTabs');
delete_option('gtpressMenu_admins_see_everything');
delete_site_option('gtpressMenu_admins_see_everything');

