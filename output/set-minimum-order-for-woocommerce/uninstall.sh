#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wecreate_minimum_order_value'
wp option delete 'wecreate_minimum_order_start_date'
wp option delete 'wecreate_minimum_order_end_date'
wp option delete 'wecreate_minimum_order_use_amount'
wp option delete 'wecreate_minimum_order_checkout_notification'

