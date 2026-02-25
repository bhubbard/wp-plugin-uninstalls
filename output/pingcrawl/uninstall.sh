#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pingcrawl_frequency'
wp option delete 'pingcrawl_max_google_hits'
wp option delete 'pingcrawl_max_pings_per_tag'
wp option delete 'pingcrawl_max_tags'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pingcrawl_pinged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pingcrawl_pinged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pingcrawl_pinged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pingcrawl_pinged'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pingcrawl_force'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pingcrawl_force'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pingcrawl_force'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pingcrawl_force'"
