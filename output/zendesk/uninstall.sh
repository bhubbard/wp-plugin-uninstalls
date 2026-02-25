#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zendesk-settings'
wp option delete 'zendesk-settings-remote-auth'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zendesk_user_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zendesk_user_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zendesk_user_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zendesk_user_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zendesk-ticket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zendesk-ticket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zendesk-ticket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zendesk-ticket'"
