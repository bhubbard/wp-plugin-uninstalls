#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cargus_settings'
wp option delete 'woocommerce_cargus_ship_and_go_settings'
wp option delete 'cargus_login_token'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'cargus_pickup_points'
wp option delete 'woocommerce_cargus_export_settings'
wp option delete 'last_cargus_refresh_login_token'
wp option delete 'cargus_locations_loaded'
wp option delete 'cargus_counties_loaded'
wp option delete 'cargus_countries_loaded'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_loaded'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_run'"
wp option delete 'cargus_scheduled_single_load_locations'
wp option delete 'cargus_scheduled_single_load_counties'
wp option delete 'cargus_scheduled_single_load_countries'
wp option delete 'cargus_export_login_token'
wp option delete 'cargus_scheduled_load_locations'
wp option delete 'cargus_scheduled_refresh_login'
wp option delete 'cargus_scheduled_refresh_login_last_run'
wp option delete 'cargus_export_scheduled_refresh_login_last_run'
wp option delete 'woocommerce_default_gateway'
wp option delete 'woocommerce_cargus_weight_based_shipping'
wp option delete 'cargus_plugin_version'

# Clear Cron Jobs
wp cron event delete 'cargus_refresh_login_token_action'
wp cron event delete 'cargus_get_ship_and_go_locations_initial_sync'
wp cron event delete 'cargus_get_counties_initial_sync'
wp cron event delete 'cargus_get_countries_initial_sync'
wp cron event delete 'cargus_get_ship_and_go_locations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cargus_awb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cargus_awb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cargus_awb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cargus_awb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_street_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_street_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_street_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_street_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_street_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_street_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_street_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_street_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_cargus_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_cargus_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_cargus_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_cargus_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_greutate_comanda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_greutate_comanda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_greutate_comanda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_greutate_comanda'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_lungime_comanda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_lungime_comanda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_lungime_comanda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_lungime_comanda'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_latime_comanda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_latime_comanda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_latime_comanda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_latime_comanda'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_inaltime_comanda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_inaltime_comanda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_inaltime_comanda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_inaltime_comanda'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_tip_colet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_tip_colet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_tip_colet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_tip_colet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_colete_comanda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_colete_comanda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_colete_comanda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_colete_comanda'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_greutate_colet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_greutate_colet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_greutate_colet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_greutate_colet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_lungime_colet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_lungime_colet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_lungime_colet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_lungime_colet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_latime_colet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_latime_colet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_latime_colet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_latime_colet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_inaltime_colet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_inaltime_colet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_inaltime_colet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_inaltime_colet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_continut_colet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_continut_colet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_continut_colet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_continut_colet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_deschidere_colete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_deschidere_colete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_deschidere_colete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_deschidere_colete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargus_valoare_ramburs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargus_valoare_ramburs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargus_valoare_ramburs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargus_valoare_ramburs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cargus_return_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cargus_return_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cargus_return_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cargus_return_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_cargus_location_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_cargus_location_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_cargus_location_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_cargus_location_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_street_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_street_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_street_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_street_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_street_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_street_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_street_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_street_number'"
