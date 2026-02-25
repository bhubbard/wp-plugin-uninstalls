-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctb_posts_to_update', 'ctb_cursor', 'ctb_running');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('block_editor');
DELETE FROM wp_usermeta WHERE meta_key IN ('block_editor');
DELETE FROM wp_termmeta WHERE meta_key IN ('block_editor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('block_editor');

