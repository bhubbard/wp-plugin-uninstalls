#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hyvor_talk_website_id'
wp option delete 'hyvor_talk_loading_mode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hyvor_talk_membership_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hyvor_talk_membership_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hyvor_talk_membership_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hyvor_talk_membership_plan'"
