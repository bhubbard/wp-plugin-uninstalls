#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reviewdodo_api_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'average_score_rounded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'average_score_rounded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'average_score_rounded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'average_score_rounded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'single_line'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'single_line'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'single_line'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'single_line'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_text'"
