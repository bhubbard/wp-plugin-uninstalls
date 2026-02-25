#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'template_post_type_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_template'"
