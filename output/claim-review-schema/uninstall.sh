#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cr-post-types'
wp option delete 'cr-organisation-name'
wp option delete 'cr-organisation-url'
wp option delete 'cr-organisation-max-number-rating'
wp option delete 'cr-organisation-min-number-rating'
wp option delete 'cr-organisation-alternate-url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fullfact_all_claims'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fullfact_all_claims'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fullfact_all_claims'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fullfact_all_claims'"
