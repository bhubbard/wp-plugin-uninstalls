#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsletter_user'
wp option delete 'newsletter_pass'
wp option delete 'newsletter_apikey'
wp option delete 'newsletter_msg_success'
wp option delete 'newsletter_msg_confirm'
wp option delete 'gan_enable_popup_forms'
wp option delete 'gan_user_hash'
wp option delete 'newsletter_plugin_version'
wp option delete 'newsletter_default_verify_mail_subject'
wp option delete 'newsletter_default_verify_mail_text'
wp option delete 'widget_getanewsletter'
wp option delete 'gan_redirect_after_activation'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gan_auth_failed_%' OR option_name LIKE '_site_transient_gan_auth_failed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gan_auth_email_sent_%' OR option_name LIKE '_site_transient_gan_auth_email_sent_%'"
wp transient delete 'newsletter_flash_message'

