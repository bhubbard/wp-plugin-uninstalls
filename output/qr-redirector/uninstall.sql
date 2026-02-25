-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qr_redirect_url', 'qr_redirect_response', 'qr_redirect_count', 'qr_redirect_ecl', 'qr_redirect_size', 'qr_redirect_notes', 'qr_fg_color', 'qr_bg_color', 'qr_transparent', 'qr_image_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('qr_redirect_url', 'qr_redirect_response', 'qr_redirect_count', 'qr_redirect_ecl', 'qr_redirect_size', 'qr_redirect_notes', 'qr_fg_color', 'qr_bg_color', 'qr_transparent', 'qr_image_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('qr_redirect_url', 'qr_redirect_response', 'qr_redirect_count', 'qr_redirect_ecl', 'qr_redirect_size', 'qr_redirect_notes', 'qr_fg_color', 'qr_bg_color', 'qr_transparent', 'qr_image_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qr_redirect_url', 'qr_redirect_response', 'qr_redirect_count', 'qr_redirect_ecl', 'qr_redirect_size', 'qr_redirect_notes', 'qr_fg_color', 'qr_bg_color', 'qr_transparent', 'qr_image_url');

