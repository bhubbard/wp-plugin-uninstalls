#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xs-mcs-options'
wp option delete 'cron'
wp option delete 'woocommerce_currency'

# Clear Cron Jobs
wp cron event delete 'xs_mcs_auto_update_currencies_values'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_mcs_curr_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_mcs_curr_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_mcs_curr_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_mcs_curr_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exchange_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exchange_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exchange_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exchange_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updated_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updated_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updated_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updated_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manualy_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manualy_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manualy_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manualy_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_mcs_switch_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_mcs_switch_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_mcs_switch_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_mcs_switch_currency'"
