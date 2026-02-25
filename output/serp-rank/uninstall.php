<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('serpr_account_json');
delete_site_option('serpr_account_json');
delete_option('serpr_active_site');
delete_site_option('serpr_active_site');
delete_option('serpr_sites_data');
delete_site_option('serpr_sites_data');
delete_option('serpr_cache_lifetime');
delete_site_option('serpr_cache_lifetime');
delete_option('serpr_excluded_keywords');
delete_site_option('serpr_excluded_keywords');

// Delete Transients
delete_transient('serpr_sites_cache');
delete_site_transient('serpr_sites_cache');

