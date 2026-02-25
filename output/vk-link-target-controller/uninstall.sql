-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom-post-types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vk-ltc-link', 'vk-ltc-target');
DELETE FROM wp_usermeta WHERE meta_key IN ('vk-ltc-link', 'vk-ltc-target');
DELETE FROM wp_termmeta WHERE meta_key IN ('vk-ltc-link', 'vk-ltc-target');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vk-ltc-link', 'vk-ltc-target');

