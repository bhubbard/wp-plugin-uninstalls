#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ajaxhc_%'"
wp option delete 'ajaxhc_use_rapid_incrementer'
wp option delete 'ajaxhc_dont_count_admins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits'"
