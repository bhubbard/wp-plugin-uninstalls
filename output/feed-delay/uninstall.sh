#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feed_delay_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feed_delay_disable_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feed_delay_disable_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feed_delay_disable_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feed_delay_disable_feed'"
