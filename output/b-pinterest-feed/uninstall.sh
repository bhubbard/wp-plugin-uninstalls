#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete '_kp_pinterest_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kp_pinterest_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kp_pinterest_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kp_pinterest_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kp_pinterest_options'"
