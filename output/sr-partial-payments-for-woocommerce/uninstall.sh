#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srpp_enable'
wp option delete 'srpp_type'
wp option delete 'srpp_percentage'
wp option delete 'srpp_fixed_amount'
wp option delete 'srpp_min_floor'
wp option delete 'srpp_shipping_only'
wp option delete 'srpp_threshold'
wp option delete 'srpp_reminder_days'
wp option delete 'srpp_enable_reminders'

