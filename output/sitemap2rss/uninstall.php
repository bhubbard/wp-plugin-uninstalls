<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('sitemap2rss_admin_notice');
delete_site_transient('sitemap2rss_admin_notice');

