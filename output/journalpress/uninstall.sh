#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jp_config'
wp option delete 'jp_header_loc'
wp option delete 'jp_custom_name'
wp option delete 'jp_custom_header'
wp option delete 'jp_privacy'
wp option delete 'jp_privacyp'
wp option delete 'jp_privacyl'
wp option delete 'jp_comments'
wp option delete 'jp_cat'
wp option delete 'jp_tag'
wp option delete 'jp_more'
wp option delete 'jp_dbversion'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jp_xpto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jp_xpto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jp_xpto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jp_xpto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_jp_xpid_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_jp_xpid_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_jp_xpid_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_jp_xpid_%'"
