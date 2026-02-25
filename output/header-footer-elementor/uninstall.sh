#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin'"
wp option delete 'bsf_usage_last_displayed_time'
wp option delete 'bsf_usage_migrated'
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time'"
wp option delete 'hfe_compatibility_option'
wp option delete 'uae_usage_optin'
wp option delete 'uae_widgets_usage_data_option'
wp option delete 'hfe_kpi_daily_snapshots'
wp option delete 'uae_lite_is_activated'
wp option delete 'hfe_start_onboarding'
wp option delete 'hfe_is_theme_supported'
wp option delete 'hfe_plugin_is_activated'
wp option delete 'hfe_onboarding_triggered'
wp option delete 'hfe_plugin_version'
wp option delete 'hfe_plugin_previous_version'
wp option delete '_hfe_widgets'
wp option delete 'bsf_usage_optin'
wp option delete 'bsf_usage_installed_time'
wp option delete 'uaelite_subscription'
wp option delete 'elementor_active_kit'
wp option delete 'siteURL'
wp option delete 'hfe_guide_email'
wp option delete 'hfe_guide_fname'
wp option delete 'allowed_astra_notices'

# Delete Transients
wp transient delete 'bsf_analytics_track'
wp transient delete 'bsf_usage_track'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hfe_duplicated_post_%' OR option_name LIKE '_site_transient_hfe_duplicated_post_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hfe_rollback_versions_%' OR option_name LIKE '_site_transient_hfe_rollback_versions_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfe_permalink_notice_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfe_permalink_notice_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfe_permalink_notice_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfe_permalink_notice_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfe-popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfe-popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfe-popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfe-popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfe-subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfe-subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfe-subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfe-subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfe_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfe_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfe_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfe_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ehf_target_include_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ehf_target_include_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ehf_target_include_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ehf_target_include_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ehf_target_exclude_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ehf_target_exclude_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ehf_target_exclude_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ehf_target_exclude_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ehf_target_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ehf_target_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ehf_target_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ehf_target_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ehf_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ehf_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ehf_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ehf_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display-on-canvas-template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unsupported-theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unsupported-theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unsupported-theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unsupported-theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uae_learn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uae_learn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uae_learn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uae_learn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfe_learn_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfe_learn_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfe_learn_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfe_learn_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-users'"
