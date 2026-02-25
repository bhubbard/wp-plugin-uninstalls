#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etsy_shop_version'
wp option delete 'etsy_shop_timeout'
wp option delete 'etsy_shop_cache_life'
wp option delete 'etsy_shop_debug_mode'
wp option delete 'etsy_shop_target_blank'
wp option delete 'etsy_shop_api_key'
wp option delete 'etsy_shop_quickstart_shop_id'

