#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amazonFeedOptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazonfeed_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazonfeed_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazonfeed_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazonfeed_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazonfeed_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazonfeed_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazonfeed_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazonfeed_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazonfeed_sortby'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazonfeed_sortby'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazonfeed_sortby'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazonfeed_sortby'"
