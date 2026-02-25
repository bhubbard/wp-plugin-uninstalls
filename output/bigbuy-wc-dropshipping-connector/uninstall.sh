#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WC_MIPCONNECTOR_VERSION'
wp option delete 'WC_MIPCONNECTOR_ACCESS_TOKEN'
wp option delete 'WC_MIPCONNECTOR_SECRET_KEY'
wp option delete 'WC_MIPCONNECTOR_SEND_EMAIL'
wp option delete 'WC_MIPCONNECTOR_TAG_ACTIVE'
wp option delete 'WC_MIPCONNECTOR_TAG_NAME'
wp option delete 'WC_MIPCONNECTOR_BRAND_ID'
wp option delete 'WC_MIPCONNECTOR_BIGBUY_CARRIER_OPTION'
wp option delete 'WC_BIGBUY_API_KEY'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_version'

