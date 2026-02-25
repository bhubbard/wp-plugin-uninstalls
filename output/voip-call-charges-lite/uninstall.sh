#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'from-price'
wp option delete 'show-prices'
wp option delete 'currency'
wp option delete 'vat'

