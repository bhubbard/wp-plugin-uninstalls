#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revechat_aid'
wp option delete 'revechat_wc_storeUrl'
wp option delete 'woocommerce_currency'
wp option delete 'revechat_wc_consumerKey'
wp option delete 'revechat_wc_consumerSecret'
wp option delete 'revechat_wc_aid'

