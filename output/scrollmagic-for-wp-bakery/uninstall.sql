-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpb_js_google_fonts_subsets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_p_video');
DELETE FROM wp_usermeta WHERE meta_key IN ('_p_video');
DELETE FROM wp_termmeta WHERE meta_key IN ('_p_video');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_p_video');

