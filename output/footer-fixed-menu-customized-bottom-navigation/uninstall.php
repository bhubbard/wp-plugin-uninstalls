<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('footerfixedmenu_button_text');
delete_site_option('footerfixedmenu_button_text');
delete_option('footerfixedmenu_button_url');
delete_site_option('footerfixedmenu_button_url');
delete_option('footerfixedmenu_bg_color');
delete_site_option('footerfixedmenu_bg_color');
delete_option('footerfixedmenu_icon_color');
delete_site_option('footerfixedmenu_icon_color');
delete_option('footerfixedmenu_button_bg');
delete_site_option('footerfixedmenu_button_bg');
delete_option('footerfixedmenu_button_text_color');
delete_site_option('footerfixedmenu_button_text_color');

