#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_email_digest_intro_text'
wp option delete 'wc_settings_email_digest_recipient'

# Clear Cron Jobs
wp cron event delete 'woocommerce_email_order_cron'

