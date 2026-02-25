#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'happy-elementor-addons_wizard_cache'
wp option delete 'happy-elementor-x98237938759348573'
wp option delete 'happy-elementor-addons_wizard_cache_key'
wp option delete 'ha__user_feedback_survey'
wp option delete 'ha__wedevs_12th_anniversary_notice'
wp option delete 'ha__spare_me'
wp option delete 'happy_addons_activation_time'
wp option delete 'ha__remind_me'
wp option delete 'ha__rated'
wp option delete 'elementor_css_print_method'
wp option delete 'elementor_icon_manager_needs_update'
wp option delete 'elementor_load_fa4_shim'
wp option delete 'elementor_container_width'
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'
wp option delete 'happyaddons_inactive_features'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'elementor_active_kit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ha_library_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ha_library_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ha_library_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ha_library_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ha_display_cond'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ha_display_cond'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ha_display_cond'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ha_display_cond'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ha_template_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ha_template_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ha_template_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ha_template_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
