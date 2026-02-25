<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('et_dt_templates');
delete_site_option('et_dt_templates');
delete_option('et_dt_shortcodes');
delete_site_option('et_dt_shortcodes');
delete_option('et_dt_shortcode_styles');
delete_site_option('et_dt_shortcode_styles');
delete_option('et_dt_custom_css');
delete_site_option('et_dt_custom_css');

