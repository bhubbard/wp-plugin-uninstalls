#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hkdigital_fastshift_version_option'
wp option delete 'woocommerce_payment-gateway-for-fastshift_settings'
wp option delete 'hkdigital_language_payment_fastshift'
wp option delete 'language_payment_fastshift'
wp option delete 'hkdigital_payment-gateway-for-fastshift_verification_id'
wp option delete 'hkdigtial_check_activation_fastshift'
wp option delete 'hkdigital_dump'
wp option delete 'woocommerce_checkout_page_id'

# Clear Cron Jobs
wp cron event delete 'cronCheckOrder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OrderGuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OrderGuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OrderGuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OrderGuid'"
