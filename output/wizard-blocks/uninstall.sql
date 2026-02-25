-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_experiment-gutenberg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transient_block_attributes', '_transient_block_supports_custom', '_thumbnail_id', '_transient_block_extra');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transient_block_attributes', '_transient_block_supports_custom', '_thumbnail_id', '_transient_block_extra');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transient_block_attributes', '_transient_block_supports_custom', '_thumbnail_id', '_transient_block_extra');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transient_block_attributes', '_transient_block_supports_custom', '_thumbnail_id', '_transient_block_extra');

