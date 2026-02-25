#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dawufeg_debug'
wp option delete 'dawufeg_debug_log'
wp option delete 'dawufeg_debug_display'
wp option delete 'dawufeg_fs_method'
wp option delete 'dawufeg_gutenburg'
wp option delete 'dawufeg_gutenburg_widget'
wp option delete 'dawufeg_plugin_updates'
wp option delete 'dawufeg_theme_updates'
wp option delete 'dawufeg_theme_editor'
wp option delete 'dawufeg_modification_updates'
wp option delete 'upload_filter_first_time'
wp option delete 'edit_filter_first_time'
wp option delete 'plugin_first_time'
wp option delete 'dawufeg_major_core_updates'
wp option delete 'dawufeg_minor_core_updates'
wp option delete 'core_update_first_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dawufeg_rate_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dawufeg_rate_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dawufeg_rate_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dawufeg_rate_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dawufeg_notices_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dawufeg_notices_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dawufeg_notices_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dawufeg_notices_time'"
