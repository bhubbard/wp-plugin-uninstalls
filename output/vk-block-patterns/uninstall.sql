-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vk_block_patterns_options', 'vk_patterns_api_cached_keys', 'vk_patterns_api_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vbp-init-pattern-add-method', 'vbp-init-post-type');
DELETE FROM wp_usermeta WHERE meta_key IN ('vbp-init-pattern-add-method', 'vbp-init-post-type');
DELETE FROM wp_termmeta WHERE meta_key IN ('vbp-init-pattern-add-method', 'vbp-init-post-type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vbp-init-pattern-add-method', 'vbp-init-post-type');

