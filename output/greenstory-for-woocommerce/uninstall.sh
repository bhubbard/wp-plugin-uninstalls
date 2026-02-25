#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gs-product'
wp option delete 'gs-general'
wp option delete 'gs-cart'
wp option delete 'gs-cart-offset'
wp option delete 'gs-counter'
wp option delete 'gs-brand-offset'
wp option delete 'gs-customer-impact'
wp option delete 'gs-pdp-offset'
wp option delete 'option_2'

