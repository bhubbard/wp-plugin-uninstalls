-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('forced_layout_expire_time', 'iphone_theme', 'show_switch_link_for_desktop', 'desktop_view_theme_link_text', 'mobile_view_theme_link_text', 'ipad_theme', 'android_theme', 'android_tab_theme', 'opera_theme', 'blackberry_theme', 'parm_os_theme', 'windows_theme', 'other_theme', 'amts_hide_pro_notice');

