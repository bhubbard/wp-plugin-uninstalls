#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getbowtied_theme_license_subscription_expired_dismissed'
wp option delete 'getbowtied_theme_license_subscription_expiring_soon_dismissed'
wp option delete 'auto_update_themes'
wp option delete 'gbt_theme_updated_redirect'
wp option delete 'social_media_options_import'
wp option delete 'social_media_repeater_option_import'
wp option delete 'sk_footer_social_icons'
wp option delete 'sk_top_bar_social_icons'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sk_%'"
wp option delete 'sk_social_media_repeater'
wp option delete 'sk_social_sharing_options_import'
wp option delete 'sk_sharing_options'
wp option delete 'sk_sharing_options_facebook'
wp option delete 'sk_sharing_options_facebook_meta'
wp option delete 'sk_sharing_options_twitter'
wp option delete 'sk_sharing_options_pinterest'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gbt_dashboard_notification_%' OR option_name LIKE '_site_transient_gbt_dashboard_notification_%'"
wp transient delete 'update_themes'
wp transient delete 'gbt_license_result'
wp transient delete 'elementor_activation_redirect'
wp transient delete 'wc_term_counts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'getbowtied-welcome-pointer-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'getbowtied-welcome-pointer-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'getbowtied-welcome-pointer-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'getbowtied-welcome-pointer-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'header_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'header_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'header_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'header_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_background_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_background_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_background_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_background_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
