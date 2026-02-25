#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'minimum_order_amount'
wp option delete 'minimum_order_amount_alert'
wp option delete 'maximum_order_amount'
wp option delete 'maximum_order_amount_alert'

