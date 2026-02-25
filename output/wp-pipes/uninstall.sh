#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pipes_cronjob_active'
wp option delete 'pipes_active'
wp option delete 'pipes_schedule'
wp option delete 'pipes_start_at'
wp option delete 'pipes_not_use_cache'
wp option delete 'pipes_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pipes_help_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pipes_help_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pipes_help_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pipes_help_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pipes_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pipes_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pipes_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pipes_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'addons_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'addons_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'addons_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'addons_per_page'"
