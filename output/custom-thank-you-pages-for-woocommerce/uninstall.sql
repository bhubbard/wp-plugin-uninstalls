-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tracking_code', 'hook_page', 'enable_custom_url', 'custom_url', 'hook_item', 'enable_on_all');
DELETE FROM wp_usermeta WHERE meta_key IN ('tracking_code', 'hook_page', 'enable_custom_url', 'custom_url', 'hook_item', 'enable_on_all');
DELETE FROM wp_termmeta WHERE meta_key IN ('tracking_code', 'hook_page', 'enable_custom_url', 'custom_url', 'hook_item', 'enable_on_all');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tracking_code', 'hook_page', 'enable_custom_url', 'custom_url', 'hook_item', 'enable_on_all');

