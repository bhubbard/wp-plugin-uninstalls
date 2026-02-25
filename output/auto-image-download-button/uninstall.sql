-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdb_button_text_color', 'cdb_button_color', 'cdb_button_size', 'cdb_button_border', 'cdb_button_radius', 'cdb_button_padding', 'cdb_button_margin', 'cdb_button_text', 'cdb_button_hover_color', 'cdb_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cdb_enable_download_button');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cdb_enable_download_button');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cdb_enable_download_button');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cdb_enable_download_button');

