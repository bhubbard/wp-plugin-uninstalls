#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_get_ids'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_in_process'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_def_vendor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_filters'"
wp option delete 'woocommerce_currency'
wp option delete 'shopybot_api_key'
wp option delete 'shopybot_fb_page_id'
wp option delete 'shopybot_fb_page_name'
wp option delete 'shopybot_shop_token'
wp option delete 'shopybot_connect_fb_page_url'
wp option delete 'shopybot_connect_shop_url'
wp option delete 'shopybot_disconnect_shop_url'
wp option delete 'shopybot_disconnect_fb_page_url'
wp option delete 'shopybot-woocommerce_in_process'
wp option delete 'shopybot-woocommerce_page'
wp option delete 'shopybot-woocommerce_pages'
wp option delete 'shopybot-woocommerce_lock'
wp option delete 'shopybot-woocommerce_get_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_yml_offer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_yml_offer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_yml_offer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_yml_offer'"
