#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ingenidev_sof_minimum_order_amount'
wp option delete 'ingenidev_sof_small_order_fee'
wp option delete 'ingenidev_sof_welcome_displayed'

