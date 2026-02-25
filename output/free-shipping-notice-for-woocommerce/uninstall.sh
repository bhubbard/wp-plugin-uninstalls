#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsn-countries'
wp option delete 'fsn-show-cart'
wp option delete 'fsn-shipping-min'
wp option delete 'fsn-all-countries'
wp option delete 'fsn-show-checkout'
wp option delete 'fsn-default-currency'
wp option delete 'fsn-highlight-color'

