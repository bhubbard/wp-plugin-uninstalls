<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gaoop_editor_button');
delete_site_option('gaoop_editor_button');
delete_option('gaoo_property');
delete_site_option('gaoo_property');
delete_option('gaoop_property');
delete_site_option('gaoop_property');
delete_option('gaoop_yoast');
delete_site_option('gaoop_yoast');
delete_option('gaoo_yoast');
delete_site_option('gaoo_yoast');
delete_option('gaoop_banner');
delete_site_option('gaoop_banner');
delete_option('gaoop_hide');
delete_site_option('gaoop_hide');
delete_option('gaoop_opt_out_text');
delete_site_option('gaoop_opt_out_text');
delete_option('gaoop_opt_out_shortcode_integration');
delete_site_option('gaoop_opt_out_shortcode_integration');
delete_option('gaoop_custom_styles');
delete_site_option('gaoop_custom_styles');
delete_option('gaoop_opt_out_cookie_set_text');
delete_site_option('gaoop_opt_out_cookie_set_text');

