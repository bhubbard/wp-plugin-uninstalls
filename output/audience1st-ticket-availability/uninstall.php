<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('audience1st_ticket_rss_num_shows');
delete_site_option('audience1st_ticket_rss_num_shows');
delete_option('audience1st_ticket_rss_version');
delete_site_option('audience1st_ticket_rss_version');
delete_option('audience1st_ticket_rss_url');
delete_site_option('audience1st_ticket_rss_url');

