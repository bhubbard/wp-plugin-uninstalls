<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('homepage_follow');
delete_site_option('homepage_follow');
delete_option('included_domains');
delete_site_option('included_domains');

