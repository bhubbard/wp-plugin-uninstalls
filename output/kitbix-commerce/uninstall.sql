-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kitbix_commerce_settings', 'kitbix_commerce_pages', 'kitbix_commerce_currency');

