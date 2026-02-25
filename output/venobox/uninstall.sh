#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'venobox_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_notice_dismissed'"
wp option delete 'venobox_activation_date'
wp option delete 'venobox_review_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venobox_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venobox_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venobox_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venobox_disabled'"
