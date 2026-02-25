<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('last_post_redirect_way');
delete_site_option('last_post_redirect_way');
delete_option('last_post_redirect_post_type');
delete_site_option('last_post_redirect_post_type');
delete_option('last_post_redirect_post_status');
delete_site_option('last_post_redirect_post_status');
delete_option('last_post_redirect_get_name');
delete_site_option('last_post_redirect_get_name');

