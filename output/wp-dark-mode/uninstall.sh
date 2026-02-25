#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp option delete 'wp_dark_mode_admin_enabled_classic_editor'
wp option delete 'wp_dark_mode_activated'
wp option delete 'hide_wp_dark_mode_recommended_plugins'
wp option delete 'wp_dark_mode_upgraded_version'
wp option delete 'wp_dark_mode_preset_sync_version'
wp option delete 'wp_dark_mode_advanced'
wp option delete 'wp_dark_mode_wc'
wp option delete 'wp_dark_mode_color'
wp option delete 'wp_dark_mode_image_settings'
wp option delete 'wp_dark_mode_video_settings'
wp option delete 'wp_dark_mode_color_presets'
wp option delete 'wp_dark_mode_color_preset_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wp_dark_mode_enabled'
wp option delete 'wpdm_social_share_enable'
wp option delete 'wpdm_social_share_init'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpdm_social_share_%'"
wp option delete 'wpdm_social_share_button_size'

# Delete Transients
wp transient delete 'wp_dark_mode_recommended_plugins'
wp transient delete 'wp_dark_mode_promo_countdown_timer'

# Clear Cron Jobs

