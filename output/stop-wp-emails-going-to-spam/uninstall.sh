#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stop-wp-emails-going-to-spam-settings-1'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_form_rendered'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismissed'"
