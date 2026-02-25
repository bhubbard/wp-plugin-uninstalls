#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nsr_upgrade_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsr_404_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsr_404_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsr_404_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsr_404_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sr_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sr_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sr_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sr_notice_dismissed'"
