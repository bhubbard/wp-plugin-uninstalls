#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hustle_version'
wp option delete 'hustle_migrations'
wp option delete 'hustle_previous_version'
wp option delete 'hustle_free_deactivated'
wp option delete 'hustle_free_activated'
wp option delete 'wdp_un_profile_data'
wp option delete 'hustle_provider_aweber_settings'
wp option delete 'hustle_provider_infusionsoft_settings'
wp option delete 'hustle_custom_palettes'
wp option delete 'hustle-hide_tutorials'
wp option delete 'yith_wcfm_main_page_id'
wp option delete 'hustle_unsubscribe_page'
wp option delete 'hustle_color_index'
wp option delete 'hustle_database_version'
wp option delete 'hustle_unsubscribe_nonces'
wp option delete 'hustle_30_migration_data'
wp option delete 'hustle_settings'
wp option delete 'hustle_ss_refresh_counters'
wp option delete 'wpoi-county-id-map'
wp option delete 'hustle_custom_nonce'
wp option delete 'hustle_activated_flag'
wp option delete 'hustle_new_welcome_notice_dismissed'
wp option delete 'hustle_popup_migrated'
wp option delete 'hustle_global_unsubscription_settings'
wp option delete 'hustle_global_email_settings'
wp option delete 'widget_hustle_module_widget'
wp option delete 'opt_in_database_version'
wp option delete 'hustle_notice_stop_support_m2'
wp option delete 'hustle_activated_providers'
wp option delete 'hustle_opt-in-constant_contact-token'
wp option delete 'hustle_provider_sendinblue_settings'
wp option delete 'hustle_provider_sendinblue_version'
wp option delete 'hustle_40_migration_offset'
wp option delete 'hustle_430_migration_offset'
wp option delete 'hustle_430_modules_to_migrate'
wp option delete 'hustle_441_migration_offset'
wp option delete 'wdev-frash'

# Delete Transients
wp transient delete 'hustle_wp_widget_daily_stats_7'
wp transient delete 'hustle_wp_widget_daily_stats_30'
wp transient delete 'hustle_wp_widget_daily_stats_90'
wp transient delete 'hustle_aweber_code_verifier'
wp transient delete 'hustle_constantcontact_auth_keys'

# Clear Cron Jobs
wp cron event delete 'hustle_send_email'
wp cron event delete 'hustle_aweber_token_refresh'
wp cron event delete 'hustle_general_data_protection_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
