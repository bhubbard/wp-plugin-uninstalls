#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cron'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta-box-order_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta-box-order_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta-box-order_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta-box-order_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'closedpostboxes_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'closedpostboxes_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'closedpostboxes_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'closedpostboxes_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'metaboxhidden_%'"
