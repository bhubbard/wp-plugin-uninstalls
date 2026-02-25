#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvr_edd_license_status'
wp option delete 'wpvr_feed_review_request'
wp option delete 'wpvr_editor_active'
wp option delete 'wpvr_author_active'
wp option delete 'wpvr_fontawesome_disable'
wp option delete 'wpvr_cardboard_disable'
wp option delete 'wpvr_webp_conversion'
wp option delete 'mobile_media_resize'
wp option delete 'high_res_image'
wp option delete 'dis_on_hover'
wp option delete 'wpvr_frontend_notice'
wp option delete 'wpvr_frontend_notice_area'
wp option delete 'wpvr_script_control'
wp option delete 'wpvr_script_list'
wp option delete 'wpvr_video_script_control'
wp option delete 'wpvr_video_script_list'
wp option delete 'dokan_vendor_active'
wp option delete 'wpvr_black_friday_notice'
wp option delete '_wpvr_eid_al_adha_2024'
wp option delete 'wpvr_posthog_access_enabled'
wp option delete 'wpvr_opt_in_toggle'
wp option delete 'wpvr_allow_tracking'
wp option delete 'wpvr_is_playground'
wp option delete 'wpvr_edd_license_key'
wp option delete 'wpvr_enable_woocommerce'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wpvr_plugin_installed'
wp option delete 'wpvr_version'
wp option delete 'wpvr_installed_time'
wp option delete 'wpvr_industry_name'
wp option delete 'wpvr_setup_wizard_started'
wp option delete 'wpvr_setup_wizard_completed'
wp option delete 'wpvr_first_strike_completed'
wp option delete 'wpvr_last_core_action'
wp option delete 'test-telemetry-plugin_allow_tracking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_core_action'"
wp option delete 'wpvr_sell_international_mother_language_day_2026_notification_bar'
wp option delete 'wpvr_warning'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete '_wpvr_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'coderex_telemetry_weekly_report'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panodata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panodata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panodata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panodata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpvr_checklist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpvr_checklist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpvr_checklist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpvr_checklist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpvr_created_from_wizard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpvr_created_from_wizard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpvr_created_from_wizard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpvr_created_from_wizard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpvr_wizard_industry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpvr_wizard_industry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpvr_wizard_industry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpvr_wizard_industry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpvr_allowed_roles_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpvr_allowed_roles_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpvr_allowed_roles_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpvr_allowed_roles_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpvr_is_demo_tour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpvr_is_demo_tour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpvr_is_demo_tour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpvr_is_demo_tour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpvr_tour_embedded_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpvr_tour_embedded_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpvr_tour_embedded_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpvr_tour_embedded_tracked'"
