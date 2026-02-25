#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sccfcw_debug_mode'
wp option delete 'sccfcw_account_number'
wp option delete 'sccfcw_password'
wp option delete 'sccfcw_shipper_phone'
wp option delete 'sccfcw_max_weight_per_parcel'
wp option delete 'woocommerce_store_name'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_email_from_address'
wp option delete 'sccfcw_review_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sccfcw_available_relays_%'"
wp option delete 'sccfcw_premium_dismissed'

# Delete Transients
wp transient delete 'sccfcw_test_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sccfcw_relay_points_%' OR option_name LIKE '_site_transient_sccfcw_relay_points_%'"
wp transient delete 'sccfcw_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chronofresh_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chronofresh_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chronofresh_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chronofresh_labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_temperature_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_temperature_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_temperature_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_temperature_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chronofresh_id_relais'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chronofresh_id_relais'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chronofresh_id_relais'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chronofresh_id_relais'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chronofresh_relay_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chronofresh_relay_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chronofresh_relay_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chronofresh_relay_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chronofresh_relay_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chronofresh_relay_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chronofresh_relay_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chronofresh_relay_address'"
