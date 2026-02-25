<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccc_option_api');
delete_site_option('ccc_option_api');
delete_option('ccc_option_widget_title');
delete_site_option('ccc_option_widget_title');
delete_option('ccc_option_theme');
delete_site_option('ccc_option_theme');
delete_option('ccc_option_custom_color');
delete_site_option('ccc_option_custom_color');
delete_option('ccc_option_amount_label');
delete_site_option('ccc_option_amount_label');
delete_option('ccc_option_from_label');
delete_site_option('ccc_option_from_label');
delete_option('ccc_option_to_label');
delete_site_option('ccc_option_to_label');
delete_option('ccc_option_result_label');
delete_site_option('ccc_option_result_label');
delete_option('ccc_option_default_from');
delete_site_option('ccc_option_default_from');
delete_option('ccc_option_default_to');
delete_site_option('ccc_option_default_to');
delete_option('ccc_options_widget_title');
delete_site_option('ccc_options_widget_title');

