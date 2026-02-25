#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'invoicejapan'
wp option delete 'invoicejapan_gateway_mail_timing'
wp option delete 'invoicejapan_gateway_remarks'
wp option delete 'invoicejapan_gateway_refunds'
wp option delete 'woocommerce_bankjp_accounts'
wp option delete 'woocommerce_postofficebankjp_accounts'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'invoicejapan_mail_timing'

