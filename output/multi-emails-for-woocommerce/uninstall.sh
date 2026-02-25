#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multi-emails-woocommerce-recipients'
wp option delete 'multi_email_woocommerce_settings'
wp option delete 'addtional_email_recipients_settings'
wp option delete 'multi_emails_woocommerce_hide_feedback_notice'
wp option delete 'multi_emails_woocommerce_installed_on'

