#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbpnns_dismissed_admin_notices'
wp option delete 'bbpnns_v2_conversion_complete'
wp option delete 'bbpress_notify_newtopic_email_subject'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'bbpress_notify_bg_reply'
wp cron event delete 'bbpress_notify_bg_topic'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_id'"
