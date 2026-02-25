#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'protect_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'protect_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'protect_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'protect_notice_dismissed'"
