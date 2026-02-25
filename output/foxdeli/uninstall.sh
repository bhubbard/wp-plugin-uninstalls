#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foxdeli_delivery_agent_extra_services'
wp option delete 'foxdeli_delivery_customer_agents'
wp option delete 'foxdeli_delivery_extra_services'
wp option delete 'foxdeli_delivery_collection_places'
wp option delete 'foxdeli_admin_api_token'
wp option delete 'foxdeli_admin_api_token_check'
wp option delete 'foxdeli_admin_default_weight'
wp option delete 'foxdeli_admin_default_length'
wp option delete 'foxdeli_admin_default_width'
wp option delete 'foxdeli_admin_default_height'
wp option delete 'foxdeli_delivery_data_last_load'
wp option delete 'foxdeli_admin_webhook_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'foxdeli_admin_state_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foxdeli_delivery_ticket_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foxdeli_delivery_ticket_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foxdeli_delivery_ticket_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foxdeli_delivery_ticket_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zasilkovna_id_dopravy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zasilkovna_id_dopravy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zasilkovna_id_dopravy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zasilkovna_id_dopravy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foxdeli_monitored_package_integration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foxdeli_monitored_package_integration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foxdeli_monitored_package_integration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foxdeli_monitored_package_integration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foxdeli_delivery_external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foxdeli_delivery_external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foxdeli_delivery_external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foxdeli_delivery_external_id'"
