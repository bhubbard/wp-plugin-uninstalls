<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pages_subdomain');
delete_site_option('pages_subdomain');
delete_option('pagessubdomain_donottrack');
delete_site_option('pagessubdomain_donottrack');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
delete_transient('rewrite_rules');
delete_site_transient('rewrite_rules');

