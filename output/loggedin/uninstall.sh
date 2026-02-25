#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loggedin_maximum'
wp option delete 'loggedin_logic'
wp option delete 'loggedin_rating_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loggedin_rating_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loggedin_rating_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loggedin_rating_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loggedin_rating_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
