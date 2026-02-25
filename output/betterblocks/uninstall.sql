-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('betterblocks_post_types', 'betterblocks_remove_directory', 'betterblocks_force_preview', 'betterblocks_sidebar_acf');

