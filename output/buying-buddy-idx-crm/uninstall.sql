-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buying_buddy_settings', 'buying_buddy_activation_redirect', 'buying_buddy_foundation_pages', 'buyingbuddy_version', 'buyingbuddy_options', 'auto_update_plugins', 'buying_buddy_update_check', 'update_plugins', 'buying_buddy_property_cache', 'buying_buddy_repository_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

