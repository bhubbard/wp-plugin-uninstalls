#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'su_option_unsafe_features'
wp option delete 'su_option_unsafe_features_auto_off'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'su_option_hide_deprecated'
wp option delete 'su_option_custom-css'
wp option delete 'su_option_skin'
wp option delete 'su_option_supported_blocks'
wp option delete 'su_option_show_toolbar_button'
wp option delete 'su_option_show_block_controls_button'
wp option delete 'su_option_skip'
wp option delete 'su_option_generator_access'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'su_presets_%'"
wp option delete 'su_option_prefix'
wp option delete 'su_option_enable_shortcodes_in'
wp option delete 'su_option_custom-formatting'
wp option delete 'su_option_galleries-432'
wp option delete 'su_option_version'
wp option delete 'su_option_do_nested_shortcodes_alt'
wp option delete 'su_vote'
wp option delete 'su_option_dismissed_notices'
wp option delete 'su_installed'
wp option delete 'su_generator_access'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_su/generator/settings/%' OR option_name LIKE '_site_transient_su/generator/settings/%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'su_slide_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'su_slide_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'su_slide_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'su_slide_link'"
