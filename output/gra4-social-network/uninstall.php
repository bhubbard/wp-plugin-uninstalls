<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gra4_plugin_do_activation_redirect');
delete_site_option('gra4_plugin_do_activation_redirect');
delete_option('gra4_version');
delete_site_option('gra4_version');
delete_option('gra4_dom_tree');
delete_site_option('gra4_dom_tree');
delete_option('gra4_dom_node_id');
delete_site_option('gra4_dom_node_id');
delete_option('gra4_margin_none');
delete_site_option('gra4_margin_none');
delete_option('gra4_set_width');
delete_site_option('gra4_set_width');
delete_option('gra4_delta_width');
delete_site_option('gra4_delta_width');
delete_option('gra4_set_custom_template');
delete_site_option('gra4_set_custom_template');
delete_option('gra4_reset_page');
delete_site_option('gra4_reset_page');
delete_option('gra4_theme_name');
delete_site_option('gra4_theme_name');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

