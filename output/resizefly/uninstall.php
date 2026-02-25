<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('resizefly_version');
delete_site_option('resizefly_version');
delete_option('resizefly_version_initial');
delete_site_option('resizefly_version_initial');
delete_option('resizefly_user_sizes');
delete_site_option('resizefly_user_sizes');
delete_option('resizefly_restrict_sizes');
delete_site_option('resizefly_restrict_sizes');
delete_option('resizefly_sizes');
delete_site_option('resizefly_sizes');
delete_option('resizefly_resized_path');
delete_site_option('resizefly_resized_path');
delete_option('resizefly_options');
delete_site_option('resizefly_options');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('rzf_notice_shown');
delete_site_transient('rzf_notice_shown');

