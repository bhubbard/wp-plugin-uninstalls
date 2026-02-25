#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_kuronekoatobarai_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'kuatowc_settlement_fees'

# Clear Cron Jobs
wp cron event delete 'atobarai_sms_event'

