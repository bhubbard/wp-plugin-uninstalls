#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_myaccount_payment_methods_endpoint'
wp option delete 'woocommerce_version'
wp option delete 'tbk_review_notice_showed'
wp option delete 'transbank_webpay_oneclick_rest_showed_welcome_message'
wp option delete 'transbank_webpay_rest_showed_welcome_message'

