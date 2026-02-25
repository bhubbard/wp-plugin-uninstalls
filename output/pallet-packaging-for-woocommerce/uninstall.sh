#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pallet'
wp option delete 'en_trial_activation_pallet'
wp option delete 'subscription_packages_response_for_pallet'
wp option delete 'en_pallet_packaging_options_plans'
wp option delete 'suspend_automatic_detection_of_pallets'
wp option delete 'en_pallet_packaging_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_sao_pallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_sao_pallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_sao_pallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_sao_pallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_vrf_pallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_vrf_pallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_vrf_pallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_vrf_pallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_sam_pallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_sam_pallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_sam_pallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_sam_pallet'"
