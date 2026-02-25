#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'odflc_options'
wp option delete 'odflc_form_custom_css'
wp option delete 'odflc_products_details'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_odflc_lead_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_odflc_lead_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_odflc_lead_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_odflc_lead_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_odflc_lead_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_odflc_lead_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_odflc_lead_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_odflc_lead_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_odflc_lead_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_odflc_lead_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_odflc_lead_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_odflc_lead_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_odflc_lead_product_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_odflc_lead_product_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_odflc_lead_product_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_odflc_lead_product_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_odflc_lead_phone_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_odflc_lead_phone_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_odflc_lead_phone_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_odflc_lead_phone_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_odflc_classification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_odflc_classification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_odflc_classification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_odflc_classification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_odflc_is_odf_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_odflc_is_odf_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_odflc_is_odf_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_odflc_is_odf_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_odflc_backlog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_odflc_backlog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_odflc_backlog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_odflc_backlog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_odflc_is_odf_deal_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_odflc_is_odf_deal_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_odflc_is_odf_deal_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_odflc_is_odf_deal_created'"
