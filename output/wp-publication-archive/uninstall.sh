#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-publication-archive-core'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpa-upload_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpa-upload_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpa-upload_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpa-upload_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpa_upload_doc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpa_upload_doc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpa_upload_doc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpa_upload_doc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpa-upload_alternates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpa-upload_alternates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpa-upload_alternates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpa-upload_alternates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpa_doc_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpa_doc_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpa_doc_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpa_doc_desc'"
