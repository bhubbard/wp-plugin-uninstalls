#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai-notice-review'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ai-notice-%'"
wp option delete 'widget_ai_widget'

# Delete Transients
wp transient delete 'ai_debug_tracking'
wp transient delete 'ai_event_log'
wp transient delete 'ai-settings-name-prefix'
wp transient delete 'ai-close'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adinserter_block_exceptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adinserter_block_exceptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adinserter_block_exceptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adinserter_block_exceptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
