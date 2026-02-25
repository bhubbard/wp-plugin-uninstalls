-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wponion_endpoints', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_active_addons';
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';
DELETE FROM wp_options WHERE option_name LIKE 'wponion_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'dismissed_wp_pointers');

