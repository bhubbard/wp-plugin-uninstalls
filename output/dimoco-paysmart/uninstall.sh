#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dimoco_payment_credentials'
wp option delete 'woocommerce_dimoco_settings'

