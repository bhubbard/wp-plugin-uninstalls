#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'attachments_migrated'
wp option delete 'attachments_ignore_migration'
wp option delete 'attachments_settings'
wp option delete 'attachments_pro_migrated'
wp option delete 'attachments_pro_ignore_migration'
wp option delete '_iti_apro_settings'
wp option delete 'attachments_pro_functions'
wp option delete 'attachments_pro_template'
wp option delete 'attachments_pro_functions '
wp option delete 'attachments_pro_template '
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp option delete 'attachments_store_native'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'attachments_cpt_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attachments_pro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attachments_pro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attachments_pro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attachments_pro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rich_editing'"
