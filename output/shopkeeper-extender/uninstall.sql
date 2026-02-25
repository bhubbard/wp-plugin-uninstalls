-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getbowtied_theme_license_subscription_expired_dismissed', 'getbowtied_theme_license_subscription_expiring_soon_dismissed', 'auto_update_themes', 'gbt_theme_updated_redirect', 'social_media_options_import', 'social_media_repeater_option_import', 'sk_footer_social_icons', 'sk_top_bar_social_icons', 'sk_social_media_repeater', 'sk_social_sharing_options_import', 'sk_sharing_options', 'sk_sharing_options_facebook', 'sk_sharing_options_facebook_meta', 'sk_sharing_options_twitter', 'sk_sharing_options_pinterest', 'update_themes', 'gbt_license_result', 'elementor_activation_redirect', 'wc_term_counts');
DELETE FROM wp_options WHERE option_name LIKE 'sk_%';
DELETE FROM wp_options WHERE option_name LIKE 'gbt_dashboard_notification_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('getbowtied-welcome-pointer-dismissed', 'display_type', 'header_id', '_menu_item_background_url', '_menu_item_megamenu', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('getbowtied-welcome-pointer-dismissed', 'display_type', 'header_id', '_menu_item_background_url', '_menu_item_megamenu', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('getbowtied-welcome-pointer-dismissed', 'display_type', 'header_id', '_menu_item_background_url', '_menu_item_megamenu', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('getbowtied-welcome-pointer-dismissed', 'display_type', 'header_id', '_menu_item_background_url', '_menu_item_megamenu', 'thumbnail_id');

