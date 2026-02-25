#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csshop_rakuten_aid'
wp option delete 'csshop_rakuten_did'
wp option delete 'csshop_amazon_access_id'
wp option delete 'csshop_amazon_secret_id'
wp option delete 'csshop_amazon_assoc'
wp option delete 'csshop_yahoo_appid'
wp option delete 'csshop_yahoo_affiliate_id'
wp option delete 'csshop_linkshare_token'
wp option delete 'csshop_valuecommerce_token'

