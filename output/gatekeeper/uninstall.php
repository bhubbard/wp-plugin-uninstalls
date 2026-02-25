<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gatekeeper_active');
delete_site_option('gatekeeper_active');
delete_option('gatekeeper_placeholder_redirect_page');
delete_site_option('gatekeeper_placeholder_redirect_page');
delete_option('gatekeeper_placeholder_behavior');
delete_site_option('gatekeeper_placeholder_behavior');
delete_option('gatekeeper_allowadmins');
delete_site_option('gatekeeper_allowadmins');
delete_option('gatekeeper_autoprotect_adminip');
delete_site_option('gatekeeper_autoprotect_adminip');
delete_option('gatekeeper_adminip');
delete_site_option('gatekeeper_adminip');
delete_option('gatekeeper_whitelist');
delete_site_option('gatekeeper_whitelist');
delete_option('gatekeeper_blacklist_behavior');
delete_site_option('gatekeeper_blacklist_behavior');
delete_option('gatekeeper_blacklist_redirect_page');
delete_site_option('gatekeeper_blacklist_redirect_page');
delete_option('gatekeeper_blacklist');
delete_site_option('gatekeeper_blacklist');
delete_option('gatekeeper_stats_blacklist_blocks');
delete_site_option('gatekeeper_stats_blacklist_blocks');
delete_option('gatekeeper_stats_whitelist_views');
delete_site_option('gatekeeper_stats_whitelist_views');
delete_option('gatekeeper_stats_offline_redirects');
delete_site_option('gatekeeper_stats_offline_redirects');

