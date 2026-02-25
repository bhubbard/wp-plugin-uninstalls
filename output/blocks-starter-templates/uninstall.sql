-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpst_block_templates_fresh_site', 'wpst-block-templates-export-checksums-time', 'wpst-block-templates-batch-is-complete', 'wpst-block-templates-manual-sync-complete', 'wpst-block-templates-export-checksums', 'wpst-block-templates-export-checksums-latest', 'wpst-block-templates-categories', 'wpst-block-templates-site-requests', 'wpst-block-templates-block-requests');
DELETE FROM wp_options WHERE option_name LIKE 'wpst-block-templates_data-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpst-block-templates-sites-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpst-block-templates-blocks-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpst_block_templates_image_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpst_block_templates_image_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpst_block_templates_image_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpst_block_templates_image_hash');

