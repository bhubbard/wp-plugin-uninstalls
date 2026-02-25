#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_bbd_search_widget'
wp option delete 'bbd_options'

# Delete Transients
wp transient delete '_bbd_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbd_meta_acf_archive_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbd_meta_acf_archive_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbd_meta_acf_archive_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbd_meta_acf_archive_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbd_meta_acf_single_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbd_meta_acf_single_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbd_meta_acf_single_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbd_meta_acf_single_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
