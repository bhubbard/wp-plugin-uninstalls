-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpetp_display', 'wpetp_auto', 'wpetp_navigation', 'wpetp_plugin_do_activation_redirect', 'color_theme', 'hover_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('testi_name', 'testi_desig', 'testi_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('testi_name', 'testi_desig', 'testi_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('testi_name', 'testi_desig', 'testi_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('testi_name', 'testi_desig', 'testi_rating');

