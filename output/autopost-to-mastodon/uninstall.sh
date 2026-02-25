#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autopostToMastodon-client-id'
wp option delete 'autopostToMastodon-client-secret'
wp option delete 'autopostToMastodon-token'
wp option delete 'autopostToMastodon-instance'
wp option delete 'autopostToMastodon-notice'
wp option delete 'autopostToMastodon-message'
wp option delete 'autopostToMastodon-mode'
wp option delete 'autopostToMastodon-toot-size'
wp option delete 'autopostToMastodon-postOnStandard'
wp option delete 'autopostToMastodon-catsAsTags'
wp option delete 'autopostToMastodon-content-warning'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autopostToMastodon-post-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autopostToMastodon-post-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autopostToMastodon-post-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autopostToMastodon-post-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autopostToMastodonshare-lastSuccessfullTootURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autopostToMastodonshare-lastSuccessfullTootURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autopostToMastodonshare-lastSuccessfullTootURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autopostToMastodonshare-lastSuccessfullTootURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autopostToMastodon-toot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autopostToMastodon-toot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autopostToMastodon-toot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autopostToMastodon-toot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autopostToMastodon-toot-thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autopostToMastodon-toot-thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autopostToMastodon-toot-thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autopostToMastodon-toot-thumbnail'"
