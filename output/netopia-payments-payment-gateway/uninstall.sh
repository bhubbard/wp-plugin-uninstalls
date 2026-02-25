#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_netopiapayments_settings'
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_netopiapayments_sandbox_cer_content'
wp option delete 'woocommerce_netopiapayments_live_cer_content'
wp option delete 'woocommerce_netopiapayments_sandbox_key_content'
wp option delete 'woocommerce_netopiapayments_live_key_content'

