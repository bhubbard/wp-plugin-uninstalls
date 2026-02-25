-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsi_tag', 'wpsi_use_pages', 'wpsi_use_posts', 'wpsi_use_backtotop', 'wpsi_backtotop_id', 'wpsi_display_all_anchors');
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsi_disable_index');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsi_disable_index');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsi_disable_index');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsi_disable_index');

