#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%slack_webhook_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%slack_member_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%forward_email_to_slack'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%slack_member_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%slack_member_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%slack_member_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%slack_member_id'"
