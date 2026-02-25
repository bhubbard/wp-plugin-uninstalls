<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('numberposts');
delete_site_option('numberposts');
delete_option('lcp_pagination');
delete_site_option('lcp_pagination');
delete_option('lcp_orderby');
delete_site_option('lcp_orderby');
delete_option('lcp_order');
delete_site_option('lcp_order');

