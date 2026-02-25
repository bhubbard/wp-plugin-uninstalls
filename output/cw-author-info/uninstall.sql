-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('color1', 'color2', 'color3', 'ver_box');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cw_facebook', 'cw_twitter', 'cw_google_plus');
DELETE FROM wp_usermeta WHERE meta_key IN ('cw_facebook', 'cw_twitter', 'cw_google_plus');
DELETE FROM wp_termmeta WHERE meta_key IN ('cw_facebook', 'cw_twitter', 'cw_google_plus');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cw_facebook', 'cw_twitter', 'cw_google_plus');

