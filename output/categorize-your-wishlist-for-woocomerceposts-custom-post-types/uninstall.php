<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwwpcpt_db_version');
delete_site_option('cwwpcpt_db_version');
delete_option('cwwpcpt_options');
delete_site_option('cwwpcpt_options');
delete_option('cwwpcpt_multi_posts_options');
delete_site_option('cwwpcpt_multi_posts_options');

