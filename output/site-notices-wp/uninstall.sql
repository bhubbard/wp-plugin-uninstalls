-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sn_wp_duration', '_sn_wp_notice_type', '_sn_wp_notice_color', '_sn_wp_message', '_sn_wp_position', '_sn_wp_show_title', '_sn_wp_notice_anime', '_sn_wp_auto_hide', '_sn_wp_can_hide', '_sn_wp_duration_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sn_wp_duration', '_sn_wp_notice_type', '_sn_wp_notice_color', '_sn_wp_message', '_sn_wp_position', '_sn_wp_show_title', '_sn_wp_notice_anime', '_sn_wp_auto_hide', '_sn_wp_can_hide', '_sn_wp_duration_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sn_wp_duration', '_sn_wp_notice_type', '_sn_wp_notice_color', '_sn_wp_message', '_sn_wp_position', '_sn_wp_show_title', '_sn_wp_notice_anime', '_sn_wp_auto_hide', '_sn_wp_can_hide', '_sn_wp_duration_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sn_wp_duration', '_sn_wp_notice_type', '_sn_wp_notice_color', '_sn_wp_message', '_sn_wp_position', '_sn_wp_show_title', '_sn_wp_notice_anime', '_sn_wp_auto_hide', '_sn_wp_can_hide', '_sn_wp_duration_type');

