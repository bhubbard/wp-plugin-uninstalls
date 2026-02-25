#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uppp_network_num_results'
wp option delete 'uppp_site_num_results'
wp option delete 'uppp_site_automatic_insertion'
wp option delete 'uppp_network_automatic_insertion'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uppp_user_num_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uppp_user_num_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uppp_user_num_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uppp_user_num_results'"
