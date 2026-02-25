#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'QAWC_EXTENSION'
wp option delete 'QAWC_EXTENSION_brand-taxonomy'
wp option delete 'QAWC_EXTENSION_shipping-status'
wp option delete 'QAWC_EXTENSION_chinization'

