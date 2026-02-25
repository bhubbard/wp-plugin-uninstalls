#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flashy_account_id'
wp option delete 'flashy_key'
wp option delete 'flashy_catalog'
wp option delete 'flashy_subscribe'
wp option delete 'flashy_list_id'
wp option delete 'flashy_allow_guest'
wp option delete 'flashy_db_version'
wp option delete 'flashy_last_update'
wp option delete 'flashy_add_context'
wp option delete 'flashy_cf7'
wp option delete 'flashy_connected'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'flashy_updates'
wp option delete 'flashy_account'
wp option delete 'flashy_settings'
wp option delete 'flashy_log_state'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flashy_accept_marketing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flashy_accept_marketing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flashy_accept_marketing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flashy_accept_marketing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flashy_reviews_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flashy_reviews_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flashy_reviews_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flashy_reviews_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flashy_reviews_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flashy_reviews_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flashy_reviews_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flashy_reviews_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
