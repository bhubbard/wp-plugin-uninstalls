<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cals_settings');
delete_site_option('cals_settings');
delete_option('cals_author_base_buffer');
delete_site_option('cals_author_base_buffer');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('cals_author_base');
delete_site_option('cals_author_base');
delete_option('cals_version');
delete_site_option('cals_version');

