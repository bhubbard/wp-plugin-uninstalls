#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trstemp_wizard_data'
wp option delete 'trstemp_current_template'
wp option delete 'trstemp_current_template_name'
wp option delete 'trstemp_setup_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_data'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'trstemp_activation_redirect'
wp transient delete 'trstemp_starter_redirect'
wp transient delete 'trstemp_notice_dismissed'
wp transient delete 'trstemp_starter_notice_dismissed'
wp transient delete 'turbo_templates_list'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_pro_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_pro_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_pro_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_pro_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trstemp_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trstemp_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trstemp_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trstemp_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turbo_templates_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turbo_templates_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turbo_templates_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turbo_templates_dismissed_notices'"
