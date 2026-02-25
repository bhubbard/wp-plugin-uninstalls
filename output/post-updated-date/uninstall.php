<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awd_modified_date_color');
delete_site_option('awd_modified_date_color');
delete_option('awd_modified_date_font_size');
delete_site_option('awd_modified_date_font_size');
delete_option('awd_modified_date_font_weight');
delete_site_option('awd_modified_date_font_weight');
delete_option('awd_modified_date_font_style');
delete_site_option('awd_modified_date_font_style');
delete_option('awd_modified_date_prefix_type');
delete_site_option('awd_modified_date_prefix_type');
delete_option('awd_modified_date_custom_prefix');
delete_site_option('awd_modified_date_custom_prefix');
delete_option('awd_modified_date_position');
delete_site_option('awd_modified_date_position');

