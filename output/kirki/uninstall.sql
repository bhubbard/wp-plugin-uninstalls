-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'kirki_downloaded_font_files', 'kirki_notices', 'update_plugins', 'kirki_remote_url_contents', 'kirki_googlefonts_cache', 'kirki_googlefont_names_cache');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kirki_fa_nag_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('kirki_fa_nag_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('kirki_fa_nag_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kirki_fa_nag_dismissed');

