#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pum_db_versions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'pum_doing_upgrade'
wp option delete 'pum_dismissed_notices'
wp option delete 'pum_show_block_editor_migration_notice'
wp option delete 'pum_installed_on'
wp option delete 'pum_gutenberg_legacy_choice'
wp option delete 'pum_seen_welcome'
wp option delete 'pum_settings_admin_notice'
wp option delete '_pum_installed'
wp option delete 'pum_files_writeable'
wp option delete '_pum_writeable_notice_dismissed'
wp option delete 'pum-has-cached-js'
wp option delete 'pum-has-cached-css'
wp option delete 'pum_block_editor_migration_handled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'pum_activated'
wp option delete 'popmake_settings'
wp option delete 'ninja_forms_version'
wp option delete 'ninja_forms_load_deprecated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_count'"
wp option delete 'pum_total_open_count'
wp option delete 'pum_total_conversion_count'
wp option delete 'pum_overall_conversion_rate'
wp option delete 'pum_site_total_open_count'
wp option delete 'pum_site_total_conversion_count'
wp option delete 'pum_ver_upgraded_from'
wp option delete 'pum_privacy_cookie_list'
wp option delete 'popup_maker_pro_license_active'
wp option delete 'pum_site_uuid'
wp option delete 'pum_debug_log_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp option delete 'pum_db_ver'
wp option delete 'pum_completed_upgrades'
wp option delete 'popmake_version'
wp option delete 'pum_ver'
wp option delete 'popup_analytics_total_opened_count'
wp option delete 'popmake_default_theme'
wp option delete 'pum_all_theme_close_text_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7_pum_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gforms_pum_%'"
wp option delete 'pum_reviews_installed_on'
wp option delete 'popup_maker_version_info'
wp option delete 'pum_version'
wp option delete 'popmake_version_upgraded_from'
wp option delete 'pum_version_upgraded_from'
wp option delete 'pum_initial_version'
wp option delete 'pum_settings'
wp option delete 'pum_example_popups_installed'
wp option delete '_pum_installed_themes'

# Delete Transients
wp transient delete 'pum_plugin_notices'
wp transient delete 'pum_activation_redirect'
wp transient delete 'update_plugins'
wp transient delete 'pum_renamed_plugins'
wp transient delete 'pum_tracking_last_send'
wp transient delete 'pum_alerts_translation_status'
wp transient delete 'pum_needs_1_8_theme_upgrades'
wp transient delete 'popmake_theme_styles'
wp transient delete 'pum_popup_count'
wp transient delete 'pum_theme_count'

# Clear Cron Jobs
wp cron event delete 'popup_maker_license_status_check'
wp cron event delete 'pum_weekly_scheduled_events'
wp cron event delete 'pum_daily_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pum_built_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pum_built_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pum_built_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pum_built_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pum_user_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pum_user_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pum_user_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pum_user_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_count_reset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_count_reset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_count_reset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_count_reset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pum_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pum_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pum_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pum_subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pum_dismissed_alerts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pum_dismissed_alerts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pum_dismissed_alerts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pum_dismissed_alerts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_cookies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_cookies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_cookies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_cookies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_analytic_opened_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_analytic_opened_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_analytic_opened_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_analytic_opened_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_analytic_last_opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_analytic_last_opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_analytic_last_opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_analytic_last_opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_open_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_open_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_open_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_open_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_open_count_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_open_count_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_open_count_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_open_count_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_last_opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_last_opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_last_opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_last_opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_theme_old_easy_modal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_theme_old_easy_modal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_theme_old_easy_modal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_theme_old_easy_modal_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_theme_defaults_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_theme_defaults_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_theme_defaults_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_theme_defaults_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_old_easy_modal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_old_easy_modal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_old_easy_modal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_old_easy_modal_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-modal_post_modals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-modal_post_modals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-modal_post_modals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-modal_post_modals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pum_nav_item_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pum_nav_item_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pum_nav_item_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pum_nav_item_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pum_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pum_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pum_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pum_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pum_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pum_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pum_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pum_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pum_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pum_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pum_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pum_reviews_already_did'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pum_example_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pum_example_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pum_example_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pum_example_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_settings'"
