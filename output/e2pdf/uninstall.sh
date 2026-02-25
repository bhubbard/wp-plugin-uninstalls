#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'e2pdf_version'
wp option delete 'e2pdf_adobesign_client_id'
wp option delete 'e2pdf_adobesign_client_secret'
wp option delete 'e2pdf_adobesign_region'
wp option delete 'e2pdf_adobesign_code'
wp option delete 'e2pdf_adobesign_api_access_point'
wp option delete 'e2pdf_adobesign_web_access_point'
wp option delete 'e2pdf_adobesign_refresh_token'
wp option delete 'e2pdf_gdrive_client_id'
wp option delete 'e2pdf_gdrive_client_secret'
wp option delete 'e2pdf_debug'
wp option delete 'e2pdf_recovery_mode_email'
wp option delete 'e2pdf_memory_time'
wp option delete 'e2pdf_dev_update'
wp option delete 'e2pdf_api'
wp option delete 'e2pdf_cached_fonts'
wp option delete 'e2pdf_user_email'
wp option delete 'e2pdf_cache'
wp option delete 'e2pdf_cache_fonts'
wp option delete 'e2pdf_cache_pdfs'
wp option delete 'recovery_mode_email_last_sent'
wp option delete 'e2pdf_disabled_extensions'
wp option delete 'e2pdf_api_protocol'
wp option delete 'e2pdf_email'
wp option delete 'e2pdf_templates_screen_per_page'
wp option delete 'e2pdf_hide_warnings'
wp option delete 'e2pdf_bulks_screen_per_page'
wp option delete 'e2pdf_bulk_export_interval'
wp option delete 'e2pdf_download_inline_chrome_ios_fix'
wp option delete 'e2pdf_download_inline_fallback_viewer'
wp option delete 'e2pdf_zapier_api_key'
wp option delete 'e2pdf_adobe_api_key'
wp option delete 'e2pdf_gdrive_api_key'
wp option delete 'e2pdf_formidable_disable_filter'
wp option delete 'e2pdf_formidable_use_keys'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'e2pdf_wc_cart_template_id'
wp option delete 'e2pdf_wc_cart_template_id_priority'
wp option delete 'e2pdf_wc_checkout_template_id'
wp option delete 'e2pdf_wc_checkout_template_id_hook'
wp option delete 'e2pdf_wc_checkout_template_id_priority'
wp option delete 'e2pdf_wc_order_details_template_id'
wp option delete 'e2pdf_wc_order_details_template_id_hook'
wp option delete 'e2pdf_wc_order_details_template_id_priority'
wp option delete 'e2pdf_wc_admin_order_actions_template_id'
wp option delete 'e2pdf_wc_admin_order_actions_template_id_hook'
wp option delete 'e2pdf_wc_admin_order_actions_template_id_priority'
wp option delete 'e2pdf_wc_admin_order_details_template_id'
wp option delete 'e2pdf_wc_my_orders_actions_template_id'
wp option delete 'wc_downloads_approved_directories_mode'
wp option delete 'e2pdf_wc_order_details_template_id_status'
wp option delete 'e2pdf_wc_admin_order_actions_template_id_status'
wp option delete 'e2pdf_wc_admin_order_details_template_id_status'
wp option delete 'e2pdf_wc_my_orders_actions_template_id_status'
wp option delete 'e2pdf_wc_my_orders_actions_template_id_priority'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp option delete 'e2pdf_wpcf7_storing_engine'
wp option delete 'wpforms_settings'
wp option delete 'e2pdf_images_remote_request'
wp option delete 'e2pdf_images_timeout'
wp option delete 'siteground_optimizer_enable_memcached'
wp option delete 'e2pdf_cache_pdfs_ttl'
wp option delete 'e2pdf_cache_tmp_ttl'
wp option delete 'e2pdf_font_processor'
wp option delete 'active_sitewide_plugins'
wp option delete 'ms_files_rewriting'
wp option delete 'e2pdf_url_format'
wp option delete 'e2pdf_mod_rewrite'
wp option delete 'e2pdf_mod_rewrite_url'
wp option delete 'icl_sitepress_settings'
wp option delete 'polylang'
wp option delete 'e2pdf_pdf_translation'
wp option delete 'trp_settings'
wp option delete 'e2pdf_adobe_api_version'
wp option delete 'e2pdf_connection_timeout'
wp option delete 'e2pdf_request_timeout'
wp option delete 'e2pdf_processor'
wp option delete 'e2pdf_license'
wp option delete 'e2pdf_nonce_key'
wp option delete 'e2pdf_gdrive_refresh_token'
wp option delete 'rewrite_rules'
wp option delete 'e2pdf_undo_limit'
wp option delete 'e2pdf_download_loader'
wp option delete 'e2pdf_translatepress_translation'
wp option delete 'e2pdf_pdf_translation_check'
wp option delete 'e2pdf_wc_invoice_template_id'
wp option delete 'e2pdf_wc_invoice_statuses'
wp option delete 'e2pdf_wc_checkout_template_id_order'
wp option delete 'e2pdf_wc_cart_template_id_order'
wp option delete 'e2pdf_developer'
wp option delete 'e2pdf_developer_ips'
wp option delete 'e2pdf_hash_timeout'
wp option delete 'e2pdf_new_edit_layout'
wp option delete 'e2pdf_revisions_limit'
wp option delete 'e2pdf_adobesign_scope_user_read'
wp option delete 'e2pdf_adobesign_scope_user_write'
wp option delete 'e2pdf_adobesign_scope_user_login'
wp option delete 'e2pdf_adobesign_scope_agreement_read'
wp option delete 'e2pdf_adobesign_scope_agreement_write'
wp option delete 'e2pdf_adobesign_scope_agreement_send'
wp option delete 'e2pdf_adobesign_scope_widget_read'
wp option delete 'e2pdf_adobesign_scope_widget_write'
wp option delete 'e2pdf_adobesign_scope_library_read'
wp option delete 'e2pdf_adobesign_scope_library_write'
wp option delete 'e2pdf_adobesign_scope_workflow_read'
wp option delete 'e2pdf_adobesign_scope_workflow_write'
wp option delete 'e2pdf_adobesign_scope_webhook_read'
wp option delete 'e2pdf_adobesign_scope_webhook_write'
wp option delete 'e2pdf_adobesign_scope_webhook_retention'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'

# Delete Transients
wp transient delete 'e2pdf_adobesign_access_token'
wp transient delete 'e2pdf_activation_key'
wp transient delete 'update_plugins'
wp transient delete 'e2pdf_bulk_export'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_e2pdf_%' OR option_name LIKE '_site_transient_e2pdf_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_e2pdf_hash_%' OR option_name LIKE '_site_transient_e2pdf_hash_%'"
wp transient delete 'e2pdf_adobesign_refresh_token'
wp transient delete 'e2pdf_gdrive_access_token'
wp transient delete 'e2pdf_notifications'

# Clear Cron Jobs
wp cron event delete 'e2pdf_cache_pdfs_cron'
wp cron event delete 'e2pdf_bulk_export_cron'
wp cron event delete 'e2pdf_cronjob'
wp cron event delete 'e2pdf_cache_tmp_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metform_entries__form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metform_entries__form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metform_entries__form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metform_entries__form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metform_entries__form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metform_entries__form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metform_entries__form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metform_entries__form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metform_entries__file_upload_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metform_entries__file_upload_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metform_entries__file_upload_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metform_entries__file_upload_new'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metform_entries__user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metform_entries__user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metform_entries__user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metform_entries__user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metform_entries__payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metform_entries__payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metform_entries__payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metform_entries__payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metform_form__entry_browser_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metform_form__entry_browser_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metform_form__entry_browser_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metform_form__entry_browser_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_order_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_order_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_order_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_order_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
