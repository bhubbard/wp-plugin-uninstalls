#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'virtuaria_correios_installed'
wp option delete 'virtuaria_correios_error_token'
wp option delete 'virtuaria_correios_contract'
wp option delete 'virtuaria_correios_nsu'
wp option delete 'woocommerce_store_postcode'
wp option delete 'virtuaria_correios_settings'
wp option delete 'virtuaria_correios_extra_fields_settings'
wp option delete 'virtuaria_correios_display_install'
wp option delete 'woocommerce_correios-integration_settings'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'virtuaria_contract_info_fixed'

# Delete Transients
wp transient delete 'virtuaria_correios_authenticated'
wp transient delete 'virtuaria_correios_token'
wp transient delete 'virtuaria_correios_prepost_error'
wp transient delete 'virtuaria_correios_contract'
wp transient delete 'virtuaria_correios_declaration_error'
wp transient delete 'virtuaria_correios_checkout_authenticated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_neighborhood'"
