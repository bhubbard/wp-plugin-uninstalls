#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buckydrop_app_id'
wp option delete 'buckydrop_app_secret'
wp option delete 'buckydrop_merchant_id'
wp option delete 'buckydrop_shop_id'

