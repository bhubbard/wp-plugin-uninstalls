#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixjet_auth_token'
wp option delete 'pixjet_config'
wp option delete 'auto_update_plugins'
wp option delete 'pixjet_cdn_config'
wp option delete 'pixjet_external_token'
wp option delete 'pixjet_auto_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pix_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pix_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pix_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pix_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pix_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pix_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pix_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pix_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixjet_process'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixjet_process'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixjet_process'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixjet_process'"
