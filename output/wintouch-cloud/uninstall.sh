#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'wintouch_userid'
wp option delete 'wintouch_enterpriseid'
wp option delete 'wintouch_shopurl'
wp option delete 'wintouch_apikey'
wp option delete 'wintouch_usertoken'
wp option delete 'wintouch_lastsync'
wp option delete 'wintouch_setting_orderstate'
wp option delete 'wintouch_setting_syncstock'
wp option delete 'woocommerce_store_address'

# Clear Cron Jobs
wp cron event delete 'wintouchStockSync'

