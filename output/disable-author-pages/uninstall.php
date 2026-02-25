<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_author_pages_redirect_non_authors');
delete_site_option('disable_author_pages_redirect_non_authors');
delete_option('disable_author_pages_activate');
delete_site_option('disable_author_pages_activate');
delete_option('disable_author_pages_adminonly');
delete_site_option('disable_author_pages_adminonly');
delete_option('disable_author_pages_status');
delete_site_option('disable_author_pages_status');
delete_option('disable_author_pages_destination');
delete_site_option('disable_author_pages_destination');
delete_option('disable_author_pages_authorlink');
delete_site_option('disable_author_pages_authorlink');

