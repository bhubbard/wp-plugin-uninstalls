#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wck_cptc'
wp option delete 'wck_meta_boxes_ids'
wp option delete 'wck_update_to_unserialized'
wp option delete 'wck_ctc'
wp option delete 'wck_serial_status'
wp option delete 'wck_license_details'
wp option delete 'wck_tools'
wp option delete 'wck_serial'
wp option delete 'wck_extra_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wck_cfc_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wck_cfc_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wck_cfc_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wck_cfc_args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wck_cfc_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wck_cfc_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wck_cfc_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wck_cfc_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wck_cfc_post_type_arg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wck_cfc_post_type_arg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wck_cfc_post_type_arg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wck_cfc_post_type_arg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wck_cfc_post_id_arg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wck_cfc_post_id_arg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wck_cfc_post_id_arg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wck_cfc_post_id_arg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wck_cfc_page_template_arg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wck_cfc_page_template_arg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wck_cfc_page_template_arg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wck_cfc_page_template_arg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_1'"
