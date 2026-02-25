<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('podcasts_installed');
delete_site_option('podcasts_installed');
delete_option('podcasts_version');
delete_site_option('podcasts_version');

