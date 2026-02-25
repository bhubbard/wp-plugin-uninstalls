-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppd_options', 'wppd_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wppd_post_disclaimer_disable', '_wppd_post_disclaimer_position', '_wppd_post_disclaimer_title', '_wppd_post_disclaimer_content', '_wppd_post_disclaimer_style', '_wppd_post_disclaimer_title_tag', '_wppd_post_disclaimer_icon', '_wppd_post_disclaimer_icon_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wppd_post_disclaimer_disable', '_wppd_post_disclaimer_position', '_wppd_post_disclaimer_title', '_wppd_post_disclaimer_content', '_wppd_post_disclaimer_style', '_wppd_post_disclaimer_title_tag', '_wppd_post_disclaimer_icon', '_wppd_post_disclaimer_icon_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wppd_post_disclaimer_disable', '_wppd_post_disclaimer_position', '_wppd_post_disclaimer_title', '_wppd_post_disclaimer_content', '_wppd_post_disclaimer_style', '_wppd_post_disclaimer_title_tag', '_wppd_post_disclaimer_icon', '_wppd_post_disclaimer_icon_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wppd_post_disclaimer_disable', '_wppd_post_disclaimer_position', '_wppd_post_disclaimer_title', '_wppd_post_disclaimer_content', '_wppd_post_disclaimer_style', '_wppd_post_disclaimer_title_tag', '_wppd_post_disclaimer_icon', '_wppd_post_disclaimer_icon_size');

