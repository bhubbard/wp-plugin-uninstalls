#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_credova_settings'
wp option delete 'credova_db_version'
wp option delete 'woocommerce_prices_include_tax'

