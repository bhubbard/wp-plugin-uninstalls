-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixobe_colorgizer_site_id', 'pixobe_coloring_expiry', 'pixobe_coloring_nonce', 'pixobe_colorgizer_plan', 'pixobe_colorgizer_message', 'pixobe_coloring_book_checkboxes', 'pixobe_coloring_book_colors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pixobe_coloring_meta_initialized', '_pixobe_coloring_colors');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pixobe_coloring_meta_initialized', '_pixobe_coloring_colors');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pixobe_coloring_meta_initialized', '_pixobe_coloring_colors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pixobe_coloring_meta_initialized', '_pixobe_coloring_colors');

