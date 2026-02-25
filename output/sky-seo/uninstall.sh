#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sky_seo'
wp option delete ' . $this->sky_fields . '

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%background'"
