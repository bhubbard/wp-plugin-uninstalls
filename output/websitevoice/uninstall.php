<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('script');
delete_site_option('script');
delete_option('show_only_posts');
delete_site_option('show_only_posts');
delete_option('user_id');
delete_site_option('user_id');
delete_option('inline_script');
delete_site_option('inline_script');

// Delete Transients
delete_transient('websitevoice_admin_notice');
delete_site_transient('websitevoice_admin_notice');

