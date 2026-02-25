-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wf_static_page_rules', '_wf_dynamic_page_rules', 'wf_pages_cache_duration', '_wf_api_token_version', '_wf_api_token', '_wf_site_data', 'wf_site_cached');

