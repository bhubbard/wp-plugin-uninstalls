<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_social_links_sidebar');
delete_site_option('widget_social_links_sidebar');
delete_option('SOCIAL_LINKS_DB_VERSION');
delete_site_option('SOCIAL_LINKS_DB_VERSION');

