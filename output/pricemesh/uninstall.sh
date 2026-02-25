#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pricemesh_option_secret'
wp option delete 'pricemesh_option_token'
wp option delete 'pricemesh_option_country'
wp option delete 'pricemesh_option_initial_items'
wp option delete 'pricemesh_option_disclaimer'
wp option delete 'pricemesh_option_stock'
wp option delete 'pricemesh_option_duplicates'
wp option delete 'pricemesh_option_display'
wp option delete 'pricemesh_option_stylesheet'
wp option delete 'pricemesh_option_theme'
wp option delete 'pricemesh_option_debug'
wp option delete 'pricemesh_option_title'
wp option delete 'pricemesh_option_name'
wp option delete 'pricemesh_option_link_all'
wp option delete 'pricemesh_option_link_text'
wp option delete 'pricemesh_option_wp_robot_integration'
wp option delete 'pricemesh_option_woocommerce_integration'
wp option delete 'pricemesh_option_custom_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricemesh_pids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricemesh_pids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricemesh_pids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricemesh_pids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricemesh_wp_robot_pids_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricemesh_wp_robot_pids_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricemesh_wp_robot_pids_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricemesh_wp_robot_pids_added'"
