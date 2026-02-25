#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shortnotes_rules_version'

# Clear Cron Jobs
wp cron event delete 'send_shortnote_webmentions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortnotes_reply_to_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortnotes_reply_to_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortnotes_reply_to_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortnotes_reply_to_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortnotes_reply_to_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortnotes_reply_to_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortnotes_reply_to_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortnotes_reply_to_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_share_on_mastodon_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_share_on_mastodon_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_share_on_mastodon_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_share_on_mastodon_url'"
