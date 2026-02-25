-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vidbgpro-notice-dismissed', 'vidbg_disable_pro_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%container';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%container';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%container';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%container';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%mp4';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%mp4';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%mp4';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mp4';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%webm';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%webm';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%webm';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%webm';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%poster';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%poster';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%poster';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%poster';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%overlay';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%overlay_color';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%overlay_color';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%overlay_color';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%overlay_color';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%overlay_alpha';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%overlay_alpha';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%overlay_alpha';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%overlay_alpha';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%no_loop';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%no_loop';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%no_loop';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%no_loop';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%tap_to_unmute';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%tap_to_unmute';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%tap_to_unmute';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%tap_to_unmute';

