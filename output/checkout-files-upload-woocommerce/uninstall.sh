#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_checkout_files_upload_version'
wp option delete 'wpw_cfu_settings'
wp option delete 'alg_checkout_files_upload_form_template_field_ajax'
wp option delete 'alg_wc_checkout_files_upload_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_hook_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_hook_priority_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_add_to_thankyou_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_add_to_myaccount_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_enabled_%'"
wp option delete 'alg_checkout_files_upload_emails_actions'
wp option delete 'alg_checkout_files_upload_emails_address'
wp option delete 'alg_checkout_files_upload_emails_subject'
wp option delete 'alg_checkout_files_upload_emails_heading'
wp option delete 'alg_checkout_files_upload_emails_content'
wp option delete 'alg_checkout_files_upload_emails_do_attach_on_upload'
wp option delete 'alg_checkout_files_upload_emails_action_removed'
wp option delete 'alg_checkout_files_upload_emails_action_uploaded'
wp option delete 'alg_checkout_files_upload_use_ajax_alert_success_remove'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_success_remove_%'"
wp option delete 'wpw_cfu_form_template_uploaded_file'
wp option delete 'alg_checkout_files_upload_use_ajax_alert_success_upload'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_success_upload_%'"
wp option delete 'alg_checkout_files_upload_max_file_size_mb'
wp option delete 'alg_checkout_files_upload_max_file_size_exceeded_message'
wp option delete 'alg_checkout_files_upload_use_ajax_progress_bar'
wp option delete 'alg_checkout_files_upload_attach_to_admin_new_order'
wp option delete 'alg_checkout_files_upload_attach_to_customer_processing_order'
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_file_accept_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_wrong_file_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_file_validate_image_dimensions_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_file_validate_image_dimensions_w_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_file_validate_image_dimensions_h_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_wrong_image_dimensions_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_no_image_dimensions_%'"
wp option delete 'woocommerce_checkout_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_required_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_required_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_show_products_in_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_show_cats_in_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_show_tags_in_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_label_%'"
wp option delete 'alg_checkout_files_upload_form_template_label'
wp option delete 'alg_checkout_files_upload_form_image_style'
wp option delete 'alg_checkout_files_upload_form_template_before'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_label_button_single_%'"
wp option delete 'alg_checkout_files_upload_form_style_ajax_delete'
wp option delete 'alg_checkout_files_upload_form_template_after'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_checkout_files_total_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_checkout_files_total_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_checkout_files_total_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_checkout_files_total_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_files_upload_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_files_upload_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_files_upload_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_files_upload_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_files_upload_real_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_files_upload_real_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_files_upload_real_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_files_upload_real_name_%'"
