#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'ls_aiig_default_aspect'
wp option delete 'ls_aiig_default_model'
wp option delete 'ls_aiig_default_output_format'
wp option delete 'ls_aiig_ci_primary'
wp option delete 'ls_aiig_ci_secondary'
wp option delete 'ls_aiig_ci_accent'
wp option delete 'ls_aiig_default_image_type'
wp option delete 'ls_aiig_default_style'
wp option delete 'ls_aiig_default_color_mood'
wp option delete 'ls_aiig_default_font_style'
wp option delete 'ls_aiig_openai_key'
wp option delete 'ls_aiig_gemini_key'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
