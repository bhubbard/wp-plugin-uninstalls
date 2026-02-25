#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brizy_prefix'
wp option delete 'brizy-social-title'
wp option delete 'brizy-social-description'
wp option delete 'brizy-custom-css'
wp option delete 'brizy-header-injection'
wp option delete 'brizy-footer-injection'
wp option delete 'brizy-social-thumbnail'
wp option delete 'brizy-settings-favicon'
wp option delete 'brizy'
wp option delete 'brizy-regenerate-permalinks'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_default_customer_address'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Delete Transients
wp transient delete 'brizy_cloud_editor_versions'
wp transient delete 'brizy-notice-rating'
wp transient delete 'brizy_admin_notice'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'publish_future_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy-notice-rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy-notice-rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy-notice-rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy-notice-rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy-font-file-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy-font-file-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy-font-file-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy-font-file-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy-font-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy-font-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy-font-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy-font-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy-font-weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy-font-weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy-font-weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy-font-weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_attachment_focal_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_attachment_focal_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_attachment_focal_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_attachment_focal_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy-rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy-rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy-rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy-rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy-template-rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy-template-rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy-template-rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy-template-rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ast-advanced-hook-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ast-advanced-hook-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ast-advanced-hook-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ast-advanced-hook-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'brizy-project-import-backup-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'brizy-project-import-backup-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'brizy-project-import-backup-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'brizy-project-import-backup-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_attachment_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_attachment_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_attachment_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_attachment_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy-form-upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy-form-upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy-form-upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy-form-upload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy-cloud-update-required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy-cloud-update-required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy-cloud-update-required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy-cloud-update-required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
