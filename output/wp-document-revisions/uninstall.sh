#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'document_upload_directory'
wp option delete 'document_slug'
wp option delete 'document_link_date'
wp option delete 'rss_language'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'wpdr_activation_issue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdr_meta_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdr_meta_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdr_meta_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdr_meta_hidden'"
