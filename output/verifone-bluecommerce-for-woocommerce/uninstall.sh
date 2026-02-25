#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_verifone_onboarding_completed'
wp option delete 'woocommerce_currency'
wp option delete 'verifone_payment_db_version'

# Clear Cron Jobs
wp cron event delete 'verifoneCheckPaymentStatusCronAction'
wp cron event delete 'verifoneUpdatePaymentMethodsCronAction'

