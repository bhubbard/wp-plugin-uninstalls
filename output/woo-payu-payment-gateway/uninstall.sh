#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'payu_settings_option_name'
wp option delete '_payu_plugin_version'
wp option delete 'woocommerce_payulistbanks_settings'
wp option delete 'woocommerce_payucreditcard_settings'
wp option delete 'woocommerce_payuinstallments_settings'

