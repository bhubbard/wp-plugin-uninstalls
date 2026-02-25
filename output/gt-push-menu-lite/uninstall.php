<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gtpm_options');
delete_site_option('gtpm_options');
delete_option('gtpm_version');
delete_site_option('gtpm_version');
delete_option('gtpm_old_version');
delete_site_option('gtpm_old_version');
delete_option('GTPM_DOING_UPDATE');
delete_site_option('GTPM_DOING_UPDATE');

