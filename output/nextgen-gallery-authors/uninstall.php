<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nggdate_options');
delete_site_option('nggdate_options');
delete_option('nggauthors_options');
delete_site_option('nggauthors_options');
delete_option('ngg_options');
delete_site_option('ngg_options');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

