#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'members_360_wp_email_logo'
wp option delete 'members_360_wp_email_intro_text'
wp option delete 'members_360_wp_email_footer_text'
wp option delete 'members_360_wp_login_redirect_url'
wp option delete 'members_360_wp_login_page_url'
wp option delete 'members_360_wp_debug_transactions_file'
wp option delete 'members_360_wp_account_custom_fields'
wp option delete 'members_360_wp_signup_page_url'
wp option delete 'members_360_wp_recaptcha_site_key'
wp option delete 'members_360_wp_recaptcha_secret_key'
wp option delete 'members_360_wp_frontend_nonce'
wp option delete 'members_360_wp_debug_transactions_db'
wp option delete 'members_360_wp_paypal_webhook_send_ok'
wp option delete 'members_360_wp_pro_license_code'
wp option delete 'members_360_wp_db_version'

# Clear Cron Jobs
wp cron event delete 'members_360_wp_cron_daily'
wp cron event delete 'members_360_wp_cron_weekly'

