#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'responsive_vc_tabs_permission'
wp option delete 'responsive_tabs_woo_sub_title'
wp option delete 'responsive_tabs_use_the_content'
wp option delete 'responsive_tabs_woocommerce_customize_default_tabs'
wp option delete 'responsive_tabs_woocommerce_default'
wp option delete 'Tabs_R_default_Settings'
wp option delete 'wpsm_tabs_r_review'

# Delete Transients
wp transient delete 'responsive_vc_tabs_permission_role'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_responsive_tabs_woo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_responsive_tabs_woo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_responsive_tabs_woo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_responsive_tabs_woo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responsive_woo_tabs_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responsive_woo_tabs_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responsive_woo_tabs_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responsive_woo_tabs_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responsive_woo_tabs_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responsive_woo_tabs_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responsive_woo_tabs_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responsive_woo_tabs_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responsive_woo_tabs_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responsive_woo_tabs_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responsive_woo_tabs_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responsive_woo_tabs_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responsive_woo_tabs_singular_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responsive_woo_tabs_singular_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responsive_woo_tabs_singular_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responsive_woo_tabs_singular_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responsive_woo_tabs_archive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responsive_woo_tabs_archive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responsive_woo_tabs_archive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responsive_woo_tabs_archive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responsive_woo_tabs_products_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responsive_woo_tabs_products_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responsive_woo_tabs_products_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responsive_woo_tabs_products_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responsive_woo_tabs_products_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responsive_woo_tabs_products_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responsive_woo_tabs_products_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responsive_woo_tabs_products_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responsive_woo_tabs_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responsive_woo_tabs_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responsive_woo_tabs_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responsive_woo_tabs_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responsive_woo_tabs_callback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responsive_woo_tabs_callback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responsive_woo_tabs_callback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responsive_woo_tabs_callback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_responsive_tabs_woo_layouts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_responsive_tabs_woo_layouts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_responsive_tabs_woo_layouts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_responsive_tabs_woo_layouts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_tabs_r_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_tabs_r_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_tabs_r_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_tabs_r_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_tabs_r_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_tabs_r_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_tabs_r_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_tabs_r_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Tabs_R_Settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Tabs_R_Settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Tabs_R_Settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Tabs_R_Settings'"
