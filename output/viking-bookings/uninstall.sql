-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('viking_button_url', 'viking_source', 'viking_style_color', 'viking_button_alignment', 'viking_button_horizontal_padding', 'viking_button_vertical_padding', 'viking_enable_button');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('viking_button_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('viking_button_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('viking_button_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('viking_button_url');

