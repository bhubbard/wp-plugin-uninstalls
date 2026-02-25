#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'anant_tab_settings'
wp option delete 'wishlist_template_select'
wp option delete 'anant_tab2_settings'
wp option delete 'elementor_maintenance_mode_mode'
wp option delete 'elementor_maintenance_mode_template_id'
wp option delete 'Copyright'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_display_on_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_display_on_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_display_on_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_display_on_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_type_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_type_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_type_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_type_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_type_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_type_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_type_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_type_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anant_user_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anant_user_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anant_user_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anant_user_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
