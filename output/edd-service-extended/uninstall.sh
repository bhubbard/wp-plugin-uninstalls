#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_message_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_user_order_thread'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_user_order_thread'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_user_order_thread'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_user_order_thread'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_user_order_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_user_order_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_user_order_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_user_order_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fes_edd_initial_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fes_edd_initial_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fes_edd_initial_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fes_edd_initial_message'"
