<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgee_append_options');
delete_site_option('pgee_append_options');
delete_option('pgee_auto_options');
delete_site_option('pgee_auto_options');
delete_option('pgee_replace_options');
delete_site_option('pgee_replace_options');
delete_option('pgee_options');
delete_site_option('pgee_options');
delete_option('links_updated_date_format');
delete_site_option('links_updated_date_format');

