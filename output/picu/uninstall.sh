#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'picu_send_html_mails'
wp option delete 'picu_from_name'
wp option delete 'picu_from_email'
wp option delete 'picu_picu_love'
wp option delete 'picu_theme'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_picu_notifications'"
wp option delete 'picu_notification_email'
wp option delete 'picu_send_password'
wp option delete 'picu_telemetry_nag'
wp option delete 'picu_collection_slug'
wp option delete 'picu_random_slugs'
wp option delete 'picu_settings_version'
wp option delete 'picu_password_by_default'
wp option delete 'picu_expiration'
wp option delete 'picu_send_reminder'
wp option delete 'picu_default_image_processor'
wp option delete 'picu_telemetry_settings'
wp option delete 'wp_mail_smtp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'picu_%'"
wp option delete 'picu_telemetry_processed'
wp option delete 'picu_settings'
wp option delete 'picu_settings_brand_customize'
wp option delete 'picu_site_title'
wp option delete 'picu_font'
wp option delete 'picu_image_size'
wp option delete 'picu_after_approval'
wp option delete 'picu_settings_import'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'picu_import_%'"
wp option delete 'picu_settings_theft_protection'
wp option delete 'picu_disable_right_click'
wp option delete 'picu_watermark'
wp option delete 'picu_telemetry_cache'
wp option delete 'picu_telemetry_cache_orders'
wp option delete 'picu_telemetry_delivery_processed'
wp option delete 'picu_registration_email_required'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_status' OR option_name LIKE '_site_transient_%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_picu_pro_box_hidden_%' OR option_name LIKE '_site_transient_picu_pro_box_hidden_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_picu_telemetry_nag_%' OR option_name LIKE '_site_transient_picu_telemetry_nag_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_picu_previous_image_order_%' OR option_name LIKE '_site_transient_picu_previous_image_order_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_picu_old_gallery_ids_%' OR option_name LIKE '_site_transient_picu_old_gallery_ids_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_picu_hide_bf_banner_%' OR option_name LIKE '_site_transient_picu_hide_bf_banner_%'"
wp transient delete '_picu_welcome_screen_activation_redirect'
wp transient delete 'picu_collection_slug'
wp transient delete 'picu_collection_old_slugs'

# Clear Cron Jobs
wp cron event delete 'picu_collection_checker'
wp cron event delete 'picu_run_telemetry_transmit'
wp cron event delete 'picu_run_compile_telemetry_data'
wp cron event delete 'picu_collection_folders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_share_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_share_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_share_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_share_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_hashes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_hashes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_hashes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_hashes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_delivery_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_delivery_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_delivery_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_delivery_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_expiration_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_expiration_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_expiration_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_expiration_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_email_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_email_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_email_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_email_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_selection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_selection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_selection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_selection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_picu_collection_selection_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_picu_collection_selection_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_picu_collection_selection_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_picu_collection_selection_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_delivery_share_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_delivery_share_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_delivery_share_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_delivery_share_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_gallery_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_gallery_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_gallery_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_gallery_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_original_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_original_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_original_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_original_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_picu_collection_reminder_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_picu_collection_reminder_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_picu_collection_reminder_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_picu_collection_reminder_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_collection_delivery_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_collection_delivery_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_collection_delivery_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_collection_delivery_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_picu_delivery_email_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_picu_delivery_email_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_picu_delivery_email_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_picu_delivery_email_address'"
