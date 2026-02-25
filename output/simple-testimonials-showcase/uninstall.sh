#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sts_color_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sts_author_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sts_author_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sts_author_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sts_author_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sts_author_organization'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sts_author_organization'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sts_author_organization'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sts_author_organization'"
