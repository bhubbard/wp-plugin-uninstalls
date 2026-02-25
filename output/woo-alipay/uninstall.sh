#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icl_enable_multi_currency'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_alipay_settings'
wp option delete 'woo_alipay_plugin_version'
wp option delete 'woocommerce_email_footer_text'

