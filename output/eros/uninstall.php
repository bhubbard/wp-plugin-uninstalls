<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icon_size');
delete_site_option('icon_size');
delete_option('textarea_width');
delete_site_option('textarea_width');
delete_option('textarea_rows');
delete_site_option('textarea_rows');
delete_option('bullseye_field_name');
delete_site_option('bullseye_field_name');
delete_option('config_option_textarea_width');
delete_site_option('config_option_textarea_width');
delete_option('config_option_textarea_rows');
delete_site_option('config_option_textarea_rows');
delete_option('diagram_size');
delete_site_option('diagram_size');

