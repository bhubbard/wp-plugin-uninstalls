#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide-price-by-role'
wp option delete 'replace_price_by_text'
wp option delete 'status-hpfwc'
wp option delete 'status-hide-price-by-role'
wp option delete 'hpfwc-display-type'
wp option delete 'hpfwc-form-type'
wp option delete 'custom-redirect-url'
wp option delete 'hpfwc-custom-text'

