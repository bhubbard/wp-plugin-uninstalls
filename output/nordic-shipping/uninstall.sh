#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_shipit_uniwin_settings'
wp option delete 'wc_shipit_uniwin_general_settings'
wp option delete 'wc_shipit_uniwin_customs_settings'
wp option delete 'wc_shipit_uniwin_print_settings'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipit_uniwin_carrier_agent_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipit_uniwin_carrier_agent_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipit_uniwin_carrier_agent_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipit_uniwin_carrier_agent_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_shipit_uniwin_shipment_response_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_shipit_uniwin_shipment_response_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_shipit_uniwin_shipment_response_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_shipit_uniwin_shipment_response_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipit_uniwin_shipping_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipit_uniwin_shipping_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipit_uniwin_shipping_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipit_uniwin_shipping_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipit_uniwin_custom_docs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipit_uniwin_custom_docs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipit_uniwin_custom_docs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipit_uniwin_custom_docs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_shipit_uniwin_shipment_response_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_shipit_uniwin_shipment_response_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_shipit_uniwin_shipment_response_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_shipit_uniwin_shipment_response_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipit_uniwin_carrier_agent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipit_uniwin_carrier_agent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipit_uniwin_carrier_agent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipit_uniwin_carrier_agent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_NODS_shipit_uniwin_tariff_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_NODS_shipit_uniwin_tariff_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_NODS_shipit_uniwin_tariff_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_NODS_shipit_uniwin_tariff_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_NODS_shipit_uniwin_custom_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_NODS_shipit_uniwin_custom_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_NODS_shipit_uniwin_custom_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_NODS_shipit_uniwin_custom_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_NODS_shipit_uniwin_custom_orgin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_NODS_shipit_uniwin_custom_orgin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_NODS_shipit_uniwin_custom_orgin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_NODS_shipit_uniwin_custom_orgin'"
