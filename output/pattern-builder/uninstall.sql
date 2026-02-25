-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_pattern_sync_status', 'wp_pattern_block_types', 'wp_pattern_template_types', 'wp_pattern_post_types', 'wp_pattern_keywords', 'wp_pattern_inserter');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_pattern_sync_status', 'wp_pattern_block_types', 'wp_pattern_template_types', 'wp_pattern_post_types', 'wp_pattern_keywords', 'wp_pattern_inserter');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_pattern_sync_status', 'wp_pattern_block_types', 'wp_pattern_template_types', 'wp_pattern_post_types', 'wp_pattern_keywords', 'wp_pattern_inserter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_pattern_sync_status', 'wp_pattern_block_types', 'wp_pattern_template_types', 'wp_pattern_post_types', 'wp_pattern_keywords', 'wp_pattern_inserter');

