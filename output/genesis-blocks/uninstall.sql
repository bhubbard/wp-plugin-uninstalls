-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('genesis_blocks_has_content_to_migrate', 'atomic_blocks_mailchimp_api_key', 'genesis_page_builder_block_settings_permissions', 'genesis_blocks_pro_migrated_from_genesis_blocks_pro', 'genesis_blocks_migrated_from_atomic_blocks', 'genesis_blocks_mailchimp_api_key', 'genesis_blocks_mailchimp_lists');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('genesis_blocks_favorite_layouts');
DELETE FROM wp_usermeta WHERE meta_key IN ('genesis_blocks_favorite_layouts');
DELETE FROM wp_termmeta WHERE meta_key IN ('genesis_blocks_favorite_layouts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('genesis_blocks_favorite_layouts');

