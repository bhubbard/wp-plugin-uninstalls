<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chpdate_enable_settings');
delete_site_option('chpdate_enable_settings');
delete_option('chpdate_comment_settings');
delete_site_option('chpdate_comment_settings');
delete_option('chpdate_format_settings');
delete_site_option('chpdate_format_settings');

