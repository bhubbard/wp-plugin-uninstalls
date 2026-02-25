<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbls_border');
delete_site_option('wpbls_border');
delete_option('wpbls_border_color');
delete_site_option('wpbls_border_color');
delete_option('wpbls_border_radius');
delete_site_option('wpbls_border_radius');
delete_option('wpbls_order');
delete_site_option('wpbls_order');
delete_option('wpbls_bg_color');
delete_site_option('wpbls_bg_color');
delete_option('wpbls_auto_play');
delete_site_option('wpbls_auto_play');
delete_option('wpbls_visible_items');
delete_site_option('wpbls_visible_items');
delete_option('wpbls_item_scrol');
delete_site_option('wpbls_item_scrol');
delete_option('wpbls_puse_hover');
delete_site_option('wpbls_puse_hover');
delete_option('wpbls_plugin_do_activation_redirect');
delete_site_option('wpbls_plugin_do_activation_redirect');

