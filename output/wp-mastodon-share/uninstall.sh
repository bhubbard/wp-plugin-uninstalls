#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mastoshare-client-id'
wp option delete 'mastoshare-client-secret'
wp option delete 'mastoshare-token'
wp option delete 'mastoshare-instance'
wp option delete 'mastoshare-message'
wp option delete 'mastoshare-mode'
wp option delete 'mastoshare-toot-size'
wp option delete 'mastoshare-notice'
wp option delete 'mastoshare-content-warning'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mastoshare-toot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mastoshare-toot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mastoshare-toot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mastoshare-toot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mastoshare-toot-thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mastoshare-toot-thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mastoshare-toot-thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mastoshare-toot-thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mastoshare-post-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mastoshare-post-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mastoshare-post-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mastoshare-post-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mastoshareshare-lastSuccessfullTootURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mastoshareshare-lastSuccessfullTootURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mastoshareshare-lastSuccessfullTootURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mastoshareshare-lastSuccessfullTootURL'"
