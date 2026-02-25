-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'fontier_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fontier_notice_dismissed', 'font_preview_enable', 'font_repeater', 'edd_download_files', 'custom_fontier_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('fontier_notice_dismissed', 'font_preview_enable', 'font_repeater', 'edd_download_files', 'custom_fontier_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('fontier_notice_dismissed', 'font_preview_enable', 'font_repeater', 'edd_download_files', 'custom_fontier_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fontier_notice_dismissed', 'font_preview_enable', 'font_repeater', 'edd_download_files', 'custom_fontier_title');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

