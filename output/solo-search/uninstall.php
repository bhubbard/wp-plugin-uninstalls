<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('solo_option_exact_posts');
delete_site_option('solo_option_exact_posts');
delete_option('solo_option_exact_pages');
delete_site_option('solo_option_exact_pages');
delete_option('solo_option_single');
delete_site_option('solo_option_single');

