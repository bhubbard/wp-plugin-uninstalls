-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smoothtoc_title', 'smoothtoc_position', 'smoothtoc_headings', 'smoothtoc_bg_color', 'smoothtoc_text_color', 'smoothtoc_font_size', 'smoothtoc_width');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smoothtoc_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smoothtoc_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smoothtoc_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smoothtoc_disabled');

