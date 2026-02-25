#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inpost_intl_code_verifier'
wp option delete 'inpost_intl_code_challenge'
wp option delete 'inpost_international_connection_timeout'
wp option delete 'inpost_international_settings_merchant'
wp option delete 'inpost_international_settings_auth'
wp option delete 'inpost_international_only_for_admins'
wp option delete 'inpost_international_settings_products'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'inpost_international_settings_sending'
wp option delete 'inpost_international_settings_dispatch_points'
wp option delete 'inpost_international_settings_geowidget'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_template_rates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rates'"
wp option delete 'woocommerce_default_country'
wp option delete 'easypack_geowidget_production_token'
wp option delete 'easypack_geowidget_sandbox_token'
wp option delete 'inpost_intl_activated'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'inpost_intl_api_token_refreshing'

# Clear Cron Jobs
wp cron event delete 'inpost_intl_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inpost_international_parcel_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inpost_international_parcel_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inpost_international_parcel_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inpost_international_parcel_template'"
