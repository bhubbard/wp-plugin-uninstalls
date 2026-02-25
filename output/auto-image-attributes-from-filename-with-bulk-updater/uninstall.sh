#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iaff_settings'
wp option delete 'iaff_bulk_updater_counter'
wp option delete 'abl_iaff_version'

# Delete Transients
wp transient delete 'iaff_activate_image_attributes_pro_plugin_complete'
wp transient delete 'iaff_activation_admin_notice'
wp transient delete 'iaff_upgrade_complete_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iaff_wp_attachment_original_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iaff_wp_attachment_original_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iaff_wp_attachment_original_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iaff_wp_attachment_original_post_title'"
