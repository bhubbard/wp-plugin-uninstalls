#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_apm_label'
wp option delete 'wc_apm_american_express'
wp option delete 'wc_apm_google'
wp option delete 'wc_apm_mastercard'
wp option delete 'wc_apm_paypal'
wp option delete 'wc_apm_visa'
wp option delete 'wc_apm_discover'
wp option delete 'wc_apm_bitcoin'
wp option delete 'wc_apm_maestro'
wp option delete 'wc_apm_cash_on_delivery'
wp option delete 'wc_apm_dankort'

