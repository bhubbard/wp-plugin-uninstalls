#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fkwcsq_setup_status'
wp option delete 'fkwcsq_connection_timestamp'
wp option delete 'fkwcsq_settings'
wp option delete 'fkwcsq_sandbox_tokens'
wp option delete 'fkwcsq_tokens'
wp option delete 'woocommerce_fkwcsq_square_settings'
wp option delete 'fkwcsq_sandbox_locations'
wp option delete 'fkwcsq_locations'
wp option delete 'woocommerce_default_country'
wp option delete 'fkwcsq_site_id'
wp option delete 'wc_square_settings'
wp option delete 'fkwcsq_last_sync'
wp option delete 'fkwcsq_products_sync_status'
wp option delete 'fkwcsq_categories_sync_status'
wp option delete 'fkwcsq_inventory_sync_status'
wp option delete 'fkwcsq_customers_sync_status'
wp option delete 'fkwcsq_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'fkwcsq_wp_square'
wp option delete 'fkwcsq_square_general_settings'
wp option delete 'fkwcsq_apple_pay_domain_registered'

# Delete Transients
wp transient delete 'fkwcsq_installing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fkwcsq_user_tokens_%' OR option_name LIKE '_site_transient_fkwcsq_user_tokens_%'"

# Clear Cron Jobs
wp cron event delete 'fkwcsq_refresh_square_token'
wp cron event delete 'fkwcsq_daily_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_square_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_square_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_square_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_square_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fkwcsq_square_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fkwcsq_square_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fkwcsq_square_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fkwcsq_square_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_variation_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_variation_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_variation_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_variation_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_image_id'"
