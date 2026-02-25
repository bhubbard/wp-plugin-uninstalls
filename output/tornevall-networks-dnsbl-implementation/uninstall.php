<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tornevall_dnsbl_cache_age');
delete_site_option('tornevall_dnsbl_cache_age');
delete_option('tornevall_dnsbl_filter_types');
delete_site_option('tornevall_dnsbl_filter_types');
delete_option('tornevall_dnsbl_nocomment');
delete_site_option('tornevall_dnsbl_nocomment');
delete_option('tornevall_dnsbl_blockfull');
delete_site_option('tornevall_dnsbl_blockfull');
delete_option('tornevall_dnsbl_delisting_page');
delete_site_option('tornevall_dnsbl_delisting_page');
delete_option('tornevall_dnsbl_update_timestamp');
delete_site_option('tornevall_dnsbl_update_timestamp');
delete_option('tornevall_dnsbl_resolver_hosts');
delete_site_option('tornevall_dnsbl_resolver_hosts');
delete_option('tornevall_dnsbl_form_noajax');
delete_site_option('tornevall_dnsbl_form_noajax');
delete_option('tornevall_dnsbl_blocked_redirecturl');
delete_site_option('tornevall_dnsbl_blocked_redirecturl');
delete_option('tornevall_dnsbl_prefer_api');
delete_site_option('tornevall_dnsbl_prefer_api');
delete_option('tornevall_dnsbl_getlisted_resolver');
delete_site_option('tornevall_dnsbl_getlisted_resolver');
delete_option('tornevall_dnsbl_comments_disabled_style');
delete_site_option('tornevall_dnsbl_comments_disabled_style');
delete_option('tornevall_dnsbl_delistingpage_comments_disabled');
delete_site_option('tornevall_dnsbl_delistingpage_comments_disabled');
delete_option('tornevall_dnsbl_wpcf7');
delete_site_option('tornevall_dnsbl_wpcf7');
delete_option('tornevall_dnsbl_preferred_api_url');
delete_site_option('tornevall_dnsbl_preferred_api_url');
delete_option('tornevall_dnsbl_api_id');
delete_site_option('tornevall_dnsbl_api_id');
delete_option('tornevall_dnsbl_api_key');
delete_site_option('tornevall_dnsbl_api_key');
delete_option('tornevall_dnsbl_fraudbl_resursbank_woocommerce');
delete_site_option('tornevall_dnsbl_fraudbl_resursbank_woocommerce');
delete_option('tornevall_dnsbl_current_flags');
delete_site_option('tornevall_dnsbl_current_flags');
delete_option('tornevall_dnsbl_clientdata');
delete_site_option('tornevall_dnsbl_clientdata');
delete_option('tornevall_dnsbl_database_version');
delete_site_option('tornevall_dnsbl_database_version');

