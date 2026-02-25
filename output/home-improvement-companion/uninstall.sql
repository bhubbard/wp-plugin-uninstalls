-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('home-improvement-companion-settings', 'home_improvement_admin_notice_welcome', 'kirki_downloaded_font_files', 'kirki_notices', 'active_sitewide_plugins', 'kirki_googlefonts_cache', 'kirki_googlefont_names_cache', 'kirki_remote_url_contents', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'home_improvement_data_key', 'kirki_fa_nag_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'home_improvement_data_key', 'kirki_fa_nag_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'home_improvement_data_key', 'kirki_fa_nag_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'home_improvement_data_key', 'kirki_fa_nag_dismissed');

