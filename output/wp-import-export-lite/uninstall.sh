#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpie_plugin_version'
wp option delete 'wpie_install_date'
wp option delete 'wpie_db_version'
wp option delete 'wpie_delete_on_uninstall'
wp option delete 'wpie_bg_and_cron_processing'
wp option delete 'wpie_extensions'
wp option delete 'wpie_flush_rewrite_rules'
wp option delete 'wpie_is_admin_notice_clear'
wp option delete 'wpie_is_updated_file_security'

# Clear Cron Jobs
wp cron event delete 'wpie_cron_schedule_import'
wp cron event delete 'wpie_cron_schedule_export'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wpie_file_security_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wpie_file_security_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wpie_file_security_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wpie_file_security_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpie_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpie_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpie_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpie_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fave_property_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fave_property_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fave_property_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fave_property_images'"
