#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heateor_ogmt'
wp option delete 'heateor_ogmt_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heateor_ogmt_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heateor_ogmt_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heateor_ogmt_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heateor_ogmt_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_ogmt_author_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_ogmt_author_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_ogmt_author_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_ogmt_author_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_ogmt_author_googleplus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_ogmt_author_googleplus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_ogmt_author_googleplus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_ogmt_author_googleplus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heateor_ogmt_author_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heateor_ogmt_author_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heateor_ogmt_author_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heateor_ogmt_author_twitter'"
