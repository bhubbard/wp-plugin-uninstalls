#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'donations_version'
wp option delete 'donations_widget_options'
wp option delete 'donations_alertpay_email'
wp option delete 'donations_moneybookers_email'
wp option delete 'donations_paypal_email'
wp option delete 'web_invoice_force_https'
wp option delete 'donations_item_name'
wp option delete 'donations_item_code'
wp option delete 'donations_currency'
wp option delete 'donations_amount'

