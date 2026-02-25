#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'our_api_field'
wp option delete 'our_first_field'
wp option delete 'our_second_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_don_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_don_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_don_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_don_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkbox name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkbox name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkbox name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkbox name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_sent'"
