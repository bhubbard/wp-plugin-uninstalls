#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cc_account_id'
wp option delete 'cc_account_updated'
wp option delete 'cc_account_status'
wp option delete 'cc_categories_updated'
wp option delete 'cc_integrations_updated'
wp option delete 'cc_shipping_method'
wp option delete 'cc_default_payment_method'
wp option delete 'cc_payment_method'
wp option delete 'cc_new_order_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sello_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sello_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sello_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sello_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'channelconnector_active_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'channelconnector_active_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'channelconnector_active_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'channelconnector_active_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'channelconnector_category_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'channelconnector_category_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'channelconnector_category_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'channelconnector_category_%'"
