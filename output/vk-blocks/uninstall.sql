-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vk_blocks_options', 'vk_blocks_checked_flags', 'vk_blocks_balloon_meta', 'vk_font_awesome_options', 'vk_blocks_load_bootstrap', 'recently_activated', 'vk_font_awesome_version', 'lightning_theme_options', 'vk_color_manager_options', 'katawara_theme_options', 'vk_css_optimize_options', 'woocommerce_shop_page_id', 'vkExUnit_common_options', 'active_sitewide_plugins', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vkblocks_dismissed_notice_pro', 'term_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('vkblocks_dismissed_notice_pro', 'term_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('vkblocks_dismissed_notice_pro', 'term_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vkblocks_dismissed_notice_pro', 'term_color');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

