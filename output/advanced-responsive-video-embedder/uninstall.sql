-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arve_install_date', 'nextgenthemes_arve', 'arve_youtube_api_error', 'arve_version', 'classic-editor-replace', 'arve_options_shortcodes', 'nextgenthemes', 'active_sitewide_plugins', 'dnh_dismissed_notices', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('arve_dismiss_pro_notice', 'dnh_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('arve_dismiss_pro_notice', 'dnh_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('arve_dismiss_pro_notice', 'dnh_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('arve_dismiss_pro_notice', 'dnh_dismissed_notices');

