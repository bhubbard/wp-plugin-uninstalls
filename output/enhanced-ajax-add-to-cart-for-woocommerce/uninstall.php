<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a2cp_image_field');
delete_site_option('a2cp_image_field');
delete_option('a2cp_custom_field');
delete_site_option('a2cp_custom_field');
delete_option('a2cp_short_description');
delete_site_option('a2cp_short_description');
delete_option('a2cp_custom_class');
delete_site_option('a2cp_custom_class');
delete_option('a2cp_out_of_stock');
delete_site_option('a2cp_out_of_stock');
delete_option('a2cp_default_text');
delete_site_option('a2cp_default_text');
delete_option('a2cp_debug');
delete_site_option('a2cp_debug');
delete_option('a2cp_dom_check');
delete_site_option('a2cp_dom_check');
delete_option('a2cp_button_blocking');
delete_site_option('a2cp_button_blocking');
delete_option('a2cp_delete_on_deactivation');
delete_site_option('a2cp_delete_on_deactivation');
delete_option('a2cp_stop_refresh_frags');
delete_site_option('a2cp_stop_refresh_frags');
delete_option('a2cp_after_add_text');
delete_site_option('a2cp_after_add_text');
delete_option('a2cp_after_add_url');
delete_site_option('a2cp_after_add_url');
delete_option('eaa2c_debug');
delete_site_option('eaa2c_debug');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

