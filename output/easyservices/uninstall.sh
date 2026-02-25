#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easyservices_version'
wp option delete 'easyservices_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyl_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyl_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyl_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyl_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyl_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyl_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyl_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyl_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyl_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyl_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyl_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyl_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyl_expert'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyl_expert'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyl_expert'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyl_expert'"
