<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('the_social_links_settings');
delete_site_option('the_social_links_settings');
delete_option('the_social_links_version');
delete_site_option('the_social_links_version');

