-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_easycredit_settings', 'rewrite_rules', 'woocommerce_easycredit_infopage_page_id', 'active_sitewide_plugins', 'easycredit-settings-checked', 'woocommerce_cache_excluded_uris');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

