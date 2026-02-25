<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmu_new_blog_default_user_role');
delete_site_option('wpmu_new_blog_default_user_role');

