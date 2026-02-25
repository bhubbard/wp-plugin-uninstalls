-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_licensed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('personalizer_ppuri_hidden', 'personalizer_shortcode_type', 'personalizer_shortcod_name', 'personalizer_shortcod_default', 'personalizer_ppuri_copy');
DELETE FROM wp_usermeta WHERE meta_key IN ('personalizer_ppuri_hidden', 'personalizer_shortcode_type', 'personalizer_shortcod_name', 'personalizer_shortcod_default', 'personalizer_ppuri_copy');
DELETE FROM wp_termmeta WHERE meta_key IN ('personalizer_ppuri_hidden', 'personalizer_shortcode_type', 'personalizer_shortcod_name', 'personalizer_shortcod_default', 'personalizer_ppuri_copy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('personalizer_ppuri_hidden', 'personalizer_shortcode_type', 'personalizer_shortcod_name', 'personalizer_shortcod_default', 'personalizer_ppuri_copy');

