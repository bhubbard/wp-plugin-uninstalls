#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdesk_tracker_notice'
wp option delete 'wpdesk_tracker_agree'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppay_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppay_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppay_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppay_channel'"
