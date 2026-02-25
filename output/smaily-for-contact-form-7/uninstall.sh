#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'smailyforcf7_form_%'"
wp option delete 'wpcf7'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smaily_for_cf7_deprecation_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smaily_for_cf7_deprecation_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smaily_for_cf7_deprecation_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smaily_for_cf7_deprecation_notice_dismissed'"
