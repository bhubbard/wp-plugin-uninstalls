#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reamaze_account_id'
wp option delete 'reamaze_version'
wp option delete 'reamaze_account_sso_key'
wp option delete 'reamaze_widget_display'
wp option delete 'reamaze_widget_code'
wp option delete 'reamaze_cue_code'
wp option delete 'reamaze_post_reamaze-kb'
wp option delete 'reamaze_post_reamaze-support'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reamaze-conversation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reamaze-conversation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reamaze-conversation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reamaze-conversation'"
