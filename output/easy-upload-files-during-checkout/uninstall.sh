#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_ufdc_use_style'
wp option delete 'woocommerce_ufdc_upload_dir'
wp option delete 'easy_ufdc_page'
wp option delete 'eufdc_debug'
wp option delete 'eufdc_product_page_positions'
wp option delete 'easy_ufdc_allowed_file_types'
wp option delete 'easy_ufdc_max_uploadsize'
wp option delete 'eufdc_amazon_credential'
wp option delete 'easy_ufdc_auto_sync'
wp option delete 'woocommerce_ufdc_min_w'
wp option delete 'woocommerce_ufdc_max_w'
wp option delete 'woocommerce_ufdc_min_h'
wp option delete 'woocommerce_ufdc_max_h'
wp option delete 'eufdc_animations'
wp option delete 'woocommerce_ufdc_upload_anim'
wp option delete 'eufdc_email'
wp option delete 'eufdc_email_link'
wp option delete 'eufdc_billing_off'
wp option delete 'eufdc_shipping_off'
wp option delete 'eufdc_order_comments_off'
wp option delete 'eufdc_secure_links'
wp option delete 'eufdc_secure_upload'
wp option delete 'eufdc_server_side_check'
wp option delete 'eufdc_img_thumbnails'
wp option delete 'eufdc_items_attachments'
wp option delete 'easy_ufdc_page_checkout_refresh'
wp option delete 'easy_ufdc_caption'
wp option delete 'easy_ufdc_success'
wp option delete 'easy_ufdc_multiple'
wp option delete 'easy_ufdc_limit'
wp option delete 'easy_ufdc_prog'
wp option delete 'easy_ufdc_req'
wp option delete 'easy_ufdc_required_limit'
wp option delete 'eufdc_input_text_field'
wp option delete 'eufdc_input_text_label'
wp option delete 'eufdc_optional'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'easy_umf_status'
wp option delete 'easy_ufdc_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eufdc_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eufdc_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eufdc_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eufdc_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eufdc_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eufdc_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eufdc_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eufdc_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eufdc_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eufdc_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eufdc_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eufdc_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eufdc_files_register'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eufdc_files_register'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eufdc_files_register'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eufdc_files_register'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eufdc_attached_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eufdc_attached_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eufdc_attached_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eufdc_attached_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eufdc_max_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eufdc_max_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eufdc_max_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eufdc_max_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eufdc_required_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eufdc_required_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eufdc_required_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eufdc_required_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_path_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_path_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_path_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_path_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_product_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_ufdc_uploaded_product_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_product_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_product_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
