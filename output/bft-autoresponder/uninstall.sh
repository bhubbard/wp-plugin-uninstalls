#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'broadfast_debug'
wp option delete 'bft_bcc'
wp option delete 'bft_sender'
wp option delete 'bft_cleanup_raw_log'
wp option delete 'bft_sleep'
wp option delete 'bft_db_version'
wp option delete 'bft_use_cron_job'
wp option delete 'bft_cron_schedule'
wp option delete 'bft_require_name'
wp option delete 'bftpro_allow_get'
wp option delete 'bft_redirect'
wp option delete 'bft_optin'
wp option delete 'bft_subscribe_notify'
wp option delete 'bft_unsubscribe_notify'
wp option delete 'bft_auto_subscribe'
wp option delete 'bft_subscribe_to_blog'
wp option delete 'bft_subscribe_auto_login'
wp option delete 'bft_mails_per_run'
wp option delete 'bft_text_captcha'
wp option delete 'bft_use_text_captcha'
wp option delete 'bft_no_signup_popup_msg'
wp option delete 'bft_no_unsub_popup_msg'
wp option delete 'arigato_recaptcha'
wp option delete 'bftpro_recaptcha_public'
wp option delete 'bftpro_recaptcha_private'
wp option delete 'bftpro_recaptcha_version'
wp option delete 'bftpro_recaptcha_lang'
wp option delete 'bftpro_recaptcha_size'
wp option delete 'bftpro_recaptcha_score'
wp option delete 'bft_optin_subject'
wp option delete 'bft_optin_message'
wp option delete 'bft_optin_redirect'
wp option delete 'bft_no_double_optin_popup_msg'
wp option delete 'bft_hooked_up'
wp option delete 'bft_subscribe_notify_subject'
wp option delete 'bft_subscribe_notify_message'
wp option delete 'bft_subscribe_notify_receivers'
wp option delete 'bft_unsubscribe_notify_subject'
wp option delete 'bft_unsubscribe_notify_message'
wp option delete 'bft_unsubscribe_notify_receivers'
wp option delete 'bft_locale_url'
wp option delete 'bft_datepicker_css'
wp option delete 'bft_date'
wp option delete 'bft_last_start'
wp option delete 'bft_current_status'
wp option delete 'bft_lock_tables'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subject'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_receivers'"
wp option delete 'bft_cf7_name_field'
wp option delete 'bft_cf7_email_field'
wp option delete 'bft_ninja_integration'
wp option delete 'in_ninja_form'
wp option delete 'bft_formidable_integration'
wp option delete 'bft_wpforms_integration'
wp option delete 'bft_webhooks'
wp option delete 'bftpro_text_captcha'

# Clear Cron Jobs
wp cron event delete 'bft_hook_up'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bft_logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bft_logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bft_logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bft_logged_in'"
