#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sumtics_settings'
wp option delete 'sumtics_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sumtics_active_tab_%' OR option_name LIKE '_site_transient_sumtics_active_tab_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_sum_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_sum_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_sum_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_sum_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_sum_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_sum_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_sum_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_sum_prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_sum_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_sum_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_sum_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_sum_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_sum_position_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_sum_position_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_sum_position_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_sum_position_override'"
