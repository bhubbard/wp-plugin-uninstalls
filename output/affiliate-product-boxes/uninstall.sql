-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apbox_font_size', 'apbox_button_color', 'apbox_currency', 'apbox_heading_level', 'apbox_button_text', 'apbox_delete_data_on_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_apbox_price', '_apbox_affiliate_link', '_apbox_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_apbox_price', '_apbox_affiliate_link', '_apbox_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_apbox_price', '_apbox_affiliate_link', '_apbox_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_apbox_price', '_apbox_affiliate_link', '_apbox_rating');

