#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bmfm_is_blinds_order_placed'
wp option delete 'bmfm_freemium_page_id'
wp option delete 'bmfm_shop_blinds_page_id'
wp option delete 'bmfm_shop_accessories_page_id'
wp option delete 'bmfm_settings_resetted'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_currency'
wp option delete 'bmfm_stored_data'
wp option delete 'bmfm_plugin_status'
wp option delete 'bmfm_plugin_saved_date_timestamp'
wp option delete 'bmfm_blinds_plugin_activated'
wp option delete 'bmfm_requested_post_id'
wp option delete 'bm_requested_post_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bmfm_blinds_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bmfm_blinds_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bmfm_blinds_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bmfm_blinds_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
