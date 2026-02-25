#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simg_settings'
wp option delete 'simg_bulk_updater_counter'
wp option delete 'simg_version'

# Delete Transients
wp transient delete 'simg_activation_admin_notice'
wp transient delete 'simg_upgrade_complete_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simg_wp_attachment_original_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simg_wp_attachment_original_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simg_wp_attachment_original_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simg_wp_attachment_original_post_title'"
