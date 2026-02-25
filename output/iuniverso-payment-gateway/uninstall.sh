#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_iu_paymenths_client_secret'
wp option delete 'woocommerce_iu_paymenths_settings'

