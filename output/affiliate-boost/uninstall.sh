#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abpdotes_delay'
wp option delete 'abpdotes_session_lifetime'
wp option delete 'abpdotes_event_trigger'
wp option delete 'abpdotes_onoff'
wp option delete 'abpdotes_exclude_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliate_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliate_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliate_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliate_link'"
