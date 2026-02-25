#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'active_sitewide_plugins'

