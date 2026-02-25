#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sponsorless_enable_coupon'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'sponsorless_cookie_duration'
wp option delete 'sponsorless_auth_completed'

# Clear Cron Jobs
wp cron event delete 'sponsorless_get_cookie_duration_api_call'

