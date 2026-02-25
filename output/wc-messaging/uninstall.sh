#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woom_abandoned_cutoff_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_coupon_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_coupon_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_coupon_discount_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_coupon_amount'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_coupon_expiry_duration'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_coupon_individual'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_coupon_auto_apply'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_coupon_expiry_duration_unit'"
wp option delete 'woom_abandoned_cart_webhook'
wp option delete 'woom_enable_report_error'
wp option delete 'woom_wa_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_body_params'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_params'"
wp option delete 'woom_triggers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_label'"
wp option delete 'woom_trigger_hooks'
wp option delete 'woom_abandoned_cart_triggers'
wp option delete 'woom_whatsapp_api'
wp option delete 'woom_sent_admin_numbers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_params'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_header_params'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attachment_url'"
wp option delete 'woom_send_order_notification'
wp option delete 'woom_order_notification_permission'
wp option delete 'woom_whatsapp_number_id'
wp option delete 'woom_abandoned_enable'
wp option delete 'woom_abandoned_auto_delete_coupon'
wp option delete 'wa_system_user_deleted'
wp option delete 'wa-system-user'
wp option delete 'notiqoo_msg_sent_count'
wp option delete 'woom_branding_update'
wp option delete 'nq_business_whatsapp_number'
wp option delete 'woom_widget_link'
wp option delete 'woom_widget_shortcode'
wp option delete 'woom_wb_account_ID'
wp option delete 'woom_opt_in_checkbox_label'
wp option delete 'woom_enable_checkbox_priority'
wp option delete 'woom_validate_phone_number'

# Delete Transients
wp transient delete 'notiqoo_free_updated'

# Clear Cron Jobs
wp cron event delete 'wcm_delete_coupons_weekly'
wp cron event delete 'woom_messaging_check_abandoned'

