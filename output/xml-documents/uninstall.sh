#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xmldoc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xml'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xml'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xml'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xml'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xslt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xslt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xslt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xslt'"
