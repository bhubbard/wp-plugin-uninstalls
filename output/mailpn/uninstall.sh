#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailpn_options_changed'
wp option delete 'mailpn_smtp_enabled'
wp option delete 'mailpn_smtp_host'
wp option delete 'mailpn_smtp_port'
wp option delete 'mailpn_smtp_auth'
wp option delete 'mailpn_smtp_username'
wp option delete 'mailpn_smtp_password'
wp option delete 'mailpn_smtp_secure'
wp option delete 'mailpn_last_cron_run'
wp option delete 'mailpn_cron_debug_log'
wp option delete 'mailpn_scheduled_welcome_emails'
wp option delete 'mailpn_scheduled_welcome_logs'
wp option delete 'mailpn_options_remove'
wp option delete 'mailpn_exception_emails'
wp option delete 'mailpn_exception_emails_domains'
wp option delete 'mailpn_exception_emails_addresses'
wp option delete 'mailpn_exception_emails_domain'
wp option delete 'mailpn_exception_emails_address'
wp option delete 'mailpn_click_tracking'
wp option delete 'mailpn_legal_name'
wp option delete 'mailpn_legal_address'
wp option delete 'mailpn_error'
wp option delete 'mailpn_errors_to_admin'
wp option delete 'mailpn_smtp_from_email'
wp option delete 'mailpn_smtp_from_name'
wp option delete 'mailpn_max_width'
wp option delete 'mailpn_image_header'
wp option delete 'mailpn_image_footer'
wp option delete 'mailpn_footer_reason'
wp option delete 'mailpn_queue'
wp option delete 'mailpn_sent_every_ten_minutes'
wp option delete 'mailpn_queue_paused'
wp option delete 'mailpn_mails_sent_today'
wp option delete 'mailpn_sent_every_day'
wp option delete 'mailpn_password_retrieve_before'
wp option delete 'mailpn_password_retrieve_after'
wp option delete 'mailpn_password_new_before'
wp option delete 'mailpn_password_new_after'
wp option delete 'userspn_newsletter_activation'
wp option delete 'mailpn'
wp option delete 'mailpn_pending_welcome_registrations'
wp option delete 'mailpn_from_email'
wp option delete 'mailpn_from_name'
wp option delete 'mailpn_new_user_notifications'
wp option delete 'mailpn_emails_sent_today'
wp option delete 'polylang'
wp option delete 'mailpn_smtp_wp_native_emails'
wp option delete 'mailpn_password_new'
wp option delete 'mailpn_password_retrieve'

# Delete Transients
wp transient delete 'mailpn_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'mailpn_cron_daily'
wp cron event delete 'mailpn_cron_ten_minutes'
wp cron event delete 'mailpn_cron_weekly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_distribution'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_distribution'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_distribution'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_distribution'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_distribution_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_distribution_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_distribution_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_distribution_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userspn_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userspn_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userspn_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userspn_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_woocommerce_cart_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_woocommerce_cart_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_woocommerce_cart_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_woocommerce_cart_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_woocommerce_cart_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_woocommerce_cart_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_woocommerce_cart_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_woocommerce_cart_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_delay_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_delay_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_delay_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_delay_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_delay_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_delay_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_delay_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_delay_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_sent_to_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_sent_to_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_sent_to_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_sent_to_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_woocommerce_abandoned_cart_delay_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_woocommerce_abandoned_cart_delay_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_woocommerce_abandoned_cart_delay_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_woocommerce_abandoned_cart_delay_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_woocommerce_abandoned_cart_delay_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_woocommerce_abandoned_cart_delay_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_woocommerce_abandoned_cart_delay_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_woocommerce_abandoned_cart_delay_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_woocommerce_purchase_delay_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_woocommerce_purchase_delay_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_woocommerce_purchase_delay_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_woocommerce_purchase_delay_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_woocommerce_purchase_delay_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_woocommerce_purchase_delay_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_woocommerce_purchase_delay_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_woocommerce_purchase_delay_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_woocommerce_purchase_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_woocommerce_purchase_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_woocommerce_purchase_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_woocommerce_purchase_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_woocommerce_purchase_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_woocommerce_purchase_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_woocommerce_purchase_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_woocommerce_purchase_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_child_birthdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_child_birthdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_child_birthdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_child_birthdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_current_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_current_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_current_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_current_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userspn_newsletter_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userspn_newsletter_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userspn_newsletter_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userspn_newsletter_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_distribution_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_distribution_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_distribution_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_distribution_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_updated_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_updated_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_updated_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_updated_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_updated_content_cpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_updated_content_cpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_updated_content_cpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_updated_content_cpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_updated_content_new_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_updated_content_new_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_updated_content_new_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_updated_content_new_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_opened_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_opened_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_opened_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_opened_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_timestamp_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_timestamp_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_timestamp_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_timestamp_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_email_coded_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_email_coded_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_email_coded_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_email_coded_once'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_sent_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_sent_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_sent_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_sent_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_mail_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_mail_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_mail_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_mail_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_content_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_content_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_content_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_content_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_read_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_read_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_read_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_read_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_mail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_mail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_mail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_mail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_rec_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_rec_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_rec_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_rec_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_welcome_delay_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_welcome_delay_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_welcome_delay_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_welcome_delay_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_welcome_delay_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_welcome_delay_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_welcome_delay_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_welcome_delay_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailpn_welcome_delay_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailpn_welcome_delay_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailpn_welcome_delay_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailpn_welcome_delay_unit'"
