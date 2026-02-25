<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('search_redirections_rules');
delete_site_option('search_redirections_rules');
delete_option('search_redirections_empty_search_dest');
delete_site_option('search_redirections_empty_search_dest');

