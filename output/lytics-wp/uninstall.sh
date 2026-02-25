#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lyticswp_access_token'
wp option delete 'lyticswp_account_name'
wp option delete 'lyticswp_account_id'
wp option delete 'lyticswp_aid'
wp option delete 'lyticswp_domain'
wp option delete 'lyticswp_enable_tag'
wp option delete 'lyticswp_debug_mode'
wp option delete 'lyticswp_ignore_admin_users'
wp option delete 'lyticswp_tag_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lyticswp_widget_configuration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lyticswp_widget_configuration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lyticswp_widget_configuration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lyticswp_widget_configuration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lytics_widget_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lytics_widget_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lytics_widget_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lytics_widget_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lytics_widget_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lytics_widget_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lytics_widget_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lytics_widget_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lytics_widget_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lytics_widget_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lytics_widget_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lytics_widget_description'"
