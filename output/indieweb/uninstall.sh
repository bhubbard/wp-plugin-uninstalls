#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iw_single_author'
wp option delete 'iw_default_author'
wp option delete 'iw_author_url'
wp option delete 'iw_relme_bw'

# Delete Transients
wp transient delete 'indieweb_mastodon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'relme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'relme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'relme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'relme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mastodon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mastodon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mastodon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mastodon'"
