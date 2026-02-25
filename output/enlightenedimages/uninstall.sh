#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elim_api_key'
wp option delete 'elim_azure_endpoint'
wp option delete 'elim_pro'
wp option delete 'elim_pro_plugin'
wp option delete 'elim_pro_api_key'
wp option delete 'elim_on_media_upload'
wp option delete 'elim_alt_text'
wp option delete 'elim_labels'
wp option delete 'elim_text'
wp option delete 'elim_logos'
wp option delete 'elim_landmarks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elim_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elim_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elim_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elim_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
