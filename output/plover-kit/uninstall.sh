#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fields'"
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
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_plover_icon_collections_%' OR option_name LIKE '_site_transient_plover_icon_collections_%'"
wp transient delete 'plover-pattern-metas'
wp transient delete 'plover-pattern-metas-version'
wp transient delete 'plover-patterns-list'
wp transient delete 'plover-patterns-list-version'
wp transient delete 'plover-patterns-preview'
wp transient delete 'plover-patterns-preview-version'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plover_kit_code_snippet_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plover_kit_code_snippet_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plover_kit_code_snippet_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plover_kit_code_snippet_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plover_kit_code_snippet_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plover_kit_code_snippet_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plover_kit_code_snippet_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plover_kit_code_snippet_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plover-kit_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plover-kit_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plover-kit_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plover-kit_image_hash'"
