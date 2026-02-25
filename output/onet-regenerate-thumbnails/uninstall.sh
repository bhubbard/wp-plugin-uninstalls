#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onetrt_opts'
wp option delete 'onetrt_tasks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'onetrt_task_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
