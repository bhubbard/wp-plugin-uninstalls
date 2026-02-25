-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ad_unblock_verification_code', 'ad_unblock_custom_api_endpoint', 'ad_unblock_page_rules', 'ad_unblock_script_sources');

