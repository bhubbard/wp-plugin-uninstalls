#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cct_license_lang'
wp option delete 'cct_layout'
wp option delete 'cct_photo_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_author_url'"
