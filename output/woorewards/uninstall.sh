#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lws_adminpanel_notices'
wp option delete 'lws-private-google-api-key'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'lws_woorewards_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lwss-last-used-fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lwss-last-used-fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lwss-last-used-fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lwss-last-used-fonts'"
