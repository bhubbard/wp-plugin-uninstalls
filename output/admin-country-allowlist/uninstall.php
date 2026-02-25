<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qweb_aca_access_key');
delete_site_option('qweb_aca_access_key');
delete_option('qweb_aca_allowed_countries');
delete_site_option('qweb_aca_allowed_countries');
delete_option('qweb_aca_allow_known_proxies');
delete_site_option('qweb_aca_allow_known_proxies');
delete_option('qweb_aca_block_xmlrpc_access');
delete_site_option('qweb_aca_block_xmlrpc_access');

// Delete Transients
delete_transient('qweb_aca_quota_reached');
delete_site_transient('qweb_aca_quota_reached');

// Clear Cron Jobs
wp_clear_scheduled_hook('qweb_aca_clear_old_cache_event');

