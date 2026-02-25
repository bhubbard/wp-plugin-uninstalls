#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giftup_company_id'
wp option delete 'giftup_api_key'
wp option delete 'giftup_version'
wp option delete 'giftup_woocommerce_operating_mode'
wp option delete 'giftup_woocommerce_enabled'
wp option delete 'giftup_woocommerce_apply_to_shipping'
wp option delete 'giftup_woocommerce_apply_to_taxes'
wp option delete 'company_id'
wp option delete 'api_key'

