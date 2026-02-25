-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('domain_search_for_whmcs_url', 'domain_search_for_whmcs_placeholder', 'domain_search_for_whmcs_shortcodes', 'whmcs_domain_search_url', 'whmcs_domain_search_placeholder', 'whmcs_domain_search_custom_css');

