<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('humanstxt_options');
delete_site_option('humanstxt_options');
delete_option('humanstxt_content');
delete_site_option('humanstxt_content');
delete_option('humanstxt_revisions');
delete_site_option('humanstxt_revisions');

// Delete Transients
delete_transient('humanstxt_plugin_information');
delete_site_transient('humanstxt_plugin_information');

