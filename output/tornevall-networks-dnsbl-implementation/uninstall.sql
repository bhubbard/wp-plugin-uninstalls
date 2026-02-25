-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tornevall_dnsbl_cache_age', 'tornevall_dnsbl_filter_types', 'tornevall_dnsbl_nocomment', 'tornevall_dnsbl_blockfull', 'tornevall_dnsbl_delisting_page', 'tornevall_dnsbl_update_timestamp', 'tornevall_dnsbl_resolver_hosts', 'tornevall_dnsbl_form_noajax', 'tornevall_dnsbl_blocked_redirecturl', 'tornevall_dnsbl_prefer_api', 'tornevall_dnsbl_getlisted_resolver', 'tornevall_dnsbl_comments_disabled_style', 'tornevall_dnsbl_delistingpage_comments_disabled', 'tornevall_dnsbl_wpcf7', 'tornevall_dnsbl_preferred_api_url', 'tornevall_dnsbl_api_id', 'tornevall_dnsbl_api_key', 'tornevall_dnsbl_fraudbl_resursbank_woocommerce', 'tornevall_dnsbl_current_flags', 'tornevall_dnsbl_clientdata', 'tornevall_dnsbl_database_version');

