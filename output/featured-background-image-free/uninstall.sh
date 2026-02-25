#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjfbi_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjfbi_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjfbi_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjfbi_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjfbi_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjfbi_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjfbi_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjfbi_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjfbi_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjfbi_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjfbi_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjfbi_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mjfbi_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mjfbi_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mjfbi_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mjfbi_tag'"
