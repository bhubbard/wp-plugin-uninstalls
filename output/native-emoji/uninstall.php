<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nep_native_emoji_active');
delete_site_option('nep_native_emoji_active');
delete_option('nep_plugin_admin_activation');
delete_site_option('nep_plugin_admin_activation');
delete_option('nep_plugin_close_panel');
delete_site_option('nep_plugin_close_panel');
delete_option('nep_plugin_comments_activation');
delete_site_option('nep_plugin_comments_activation');
delete_option('nep_plugin_site_use_jquery');
delete_site_option('nep_plugin_site_use_jquery');
delete_option('nep_plugin_show_on_mobile');
delete_site_option('nep_plugin_show_on_mobile');
delete_option('nep_plugin_panel_color');
delete_site_option('nep_plugin_panel_color');
delete_option('nep_plugin_panel_position');
delete_site_option('nep_plugin_panel_position');
delete_option('nep_plugin_close_panel_comments');
delete_site_option('nep_plugin_close_panel_comments');

