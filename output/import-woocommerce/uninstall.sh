#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ULTIMATE_CSV_IMP_VERSION'
wp option delete 'smack_image_options'
wp option delete 'total_attachment_ids'
wp option delete 'failed_attachment_ids'
wp option delete 'sm_uci_pro_settings'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendPassword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendPassword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendPassword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendPassword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jet_abaf_service_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jet_abaf_service_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jet_abaf_service_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jet_abaf_service_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jet_abaf_service_cost_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jet_abaf_service_cost_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jet_abaf_service_cost_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jet_abaf_service_cost_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jet_abaf_guests_multiplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jet_abaf_guests_multiplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jet_abaf_guests_multiplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jet_abaf_guests_multiplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jet_abaf_everyday_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jet_abaf_everyday_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jet_abaf_everyday_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jet_abaf_everyday_service'"
