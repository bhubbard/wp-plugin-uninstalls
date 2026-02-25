#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dfrps_configuration'
wp option delete 'dfrpswc_options'
wp option delete 'dfrapi_networks'
wp option delete 'dfrpswc_version'

# Delete Transients
wp transient delete 'wc_term_counts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dfrps_preprocess_complete_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dfrps_product_set_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dfrps_product_set_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dfrps_product_set_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dfrps_product_set_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dfrps_postprocess_complete_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dfrps_cpt_last_update_num_products_deleted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dfrps_cpt_last_update_num_products_deleted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dfrps_cpt_last_update_num_products_deleted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dfrps_cpt_last_update_num_products_deleted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dfrps_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dfrps_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dfrps_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dfrps_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dfrps_is_dfrpswc_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dfrps_is_dfrpswc_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dfrps_is_dfrpswc_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dfrps_is_dfrpswc_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dfrps_cpt_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dfrps_cpt_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dfrps_cpt_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dfrps_cpt_terms'"
