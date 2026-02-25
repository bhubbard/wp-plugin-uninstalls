#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tap_account_id'
wp option delete 'tap_wc_enabled'
wp option delete 'tap_ec_enabled'
wp option delete 'tap_wc_use_woo_customer_id_for_lifetime'
wp option delete 'tap_wc_connected'
wp option delete 'thank_you_page'
wp option delete 'query_parameter_external_id'
wp option delete 'query_parameter_conversion_amount'
wp option delete 'integrate_for'
wp option delete 'tap_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tapfiliate_category_commission_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tapfiliate_category_commission_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tapfiliate_category_commission_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tapfiliate_category_commission_type'"
