#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'landa_setting'
wp option delete 'landa_token'
wp option delete 'landa_db_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'landa_order_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'landa_order_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'landa_order_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'landa_order_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'landa_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'landa_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'landa_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'landa_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'landa_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'landa_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'landa_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'landa_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'landa_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'landa_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'landa_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'landa_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_diff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_diff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_diff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_diff'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'landa_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'landa_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'landa_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'landa_sync'"
