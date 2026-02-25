#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kinguin_api_key'
wp option delete 'kinguin_connection_status'
wp option delete 'kinguin_environment'
wp option delete 'kinguin_cron_frequency'
wp option delete 'kinguin_orders_webhook_secret'
wp option delete 'kinguin_products_webhook_secret'
wp option delete 'kinguin_email_message'
wp option delete 'kinguin_product_margin_val'
wp option delete 'kinguin_product_margin'
wp option delete 'kinguin_discount_code'
wp option delete 'kinguin_enable_webhook_import'
wp option delete 'kinguin_settings_import'
wp option delete 'kinguin_currency_rate'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'kinguin_webhook_log'
wp option delete 'kinguin_import_only_existing'
wp option delete 'kinguin_product_view'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'existing_kinguin_ids'

# Clear Cron Jobs
wp cron event delete 'kinguin_update_prices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kinguin_keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kinguin_keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kinguin_keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kinguin_keys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kinguin_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kinguin_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kinguin_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kinguin_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kinguinPrice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kinguinPrice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kinguinPrice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kinguinPrice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_steam'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_steam'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_steam'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_steam'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ageRating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ageRating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ageRating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ageRating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regionId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regionId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regionId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regionId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_activationDetails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_activationDetails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_activationDetails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_activationDetails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_systemRequirements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_systemRequirements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_systemRequirements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_systemRequirements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_screenshots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_screenshots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_screenshots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_screenshots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kinguin_keys_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kinguin_keys_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kinguin_keys_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kinguin_keys_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_productId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_productId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_productId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_productId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metacriticScore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metacriticScore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metacriticScore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metacriticScore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_releaseDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_releaseDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_releaseDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_releaseDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_originalName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_originalName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_originalName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_originalName'"
