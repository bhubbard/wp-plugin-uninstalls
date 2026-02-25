#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hsforms_api_option_name'
wp option delete 'hsforms_api_token'
wp option delete 'hsforms_options_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratecode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratecode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratecode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratecode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tp_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tp_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tp_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tp_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tp_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tp_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tp_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tp_end'"
