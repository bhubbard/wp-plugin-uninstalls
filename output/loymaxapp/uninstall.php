<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('theme_mods_customify');
delete_site_option('theme_mods_customify');
delete_option('loymax_install_wizard_in_progress');
delete_site_option('loymax_install_wizard_in_progress');
delete_option('loymax-page-link');
delete_site_option('loymax-page-link');
delete_option('loymax-page-title');
delete_site_option('loymax-page-title');
delete_option('loymax-navigation-menu-id');
delete_site_option('loymax-navigation-menu-id');
delete_option('loymax-personal-menu-item-id');
delete_site_option('loymax-personal-menu-item-id');
delete_option('loymax-component-order');
delete_site_option('loymax-component-order');
delete_option('jal_db_version');
delete_site_option('jal_db_version');
delete_option('loymax_update_error');
delete_site_option('loymax_update_error');
delete_option('loymax_page_ID');
delete_site_option('loymax_page_ID');
delete_option('loymax_plugin_updated');
delete_site_option('loymax_plugin_updated');
delete_option('loymax_page_delete_prevented');
delete_site_option('loymax_page_delete_prevented');
delete_option('loymax_menu_delete_prevented');
delete_site_option('loymax_menu_delete_prevented');

