#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_quantapay_settings'
wp option delete 'quantapay-cloud-settings'
wp option delete 'qtp-cloud-settings'
wp option delete 'quantapay_logging_enabled'
wp option delete 'qtp_logging_enabled'

