#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hpsp_salt_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hpsp_salt_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hpsp_salt_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hpsp_salt_notice_dismissed'"
