#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rb_daily_mileage_allow'
wp option delete 'rb_weekly_mileage_allow'
wp option delete 'rb_hourly_mileage_allow'
wp option delete 'rentalbuddy_version'

