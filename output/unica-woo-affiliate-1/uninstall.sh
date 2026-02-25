#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uwaff_current_page'
wp option delete 'uwaff_username'
wp option delete 'uwaff_password'
wp option delete 'uwaff_button_text'
wp option delete 'uwaff_coupon_code'
wp option delete 'uwaff_aff_id'
wp option delete 'uwaff_token'

# Clear Cron Jobs
wp cron event delete 'uwaff_daily_product_import'

