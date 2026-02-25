#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whols_diagnostic_data_notice'
wp option delete 'whols_diagnostic_data_agreed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer'"
wp option delete 'whols_options'
wp option delete 'whols_flush_rewrite_rules_flag'
wp option delete 'whols_installed'
wp option delete 'whols_onboarding'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'whols_version'
wp option delete 'whols_do_activation_redirect'
wp option delete 'whols_default_role'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_data' OR option_name LIKE '_site_transient_%_htiop_data'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whols_user_request_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whols_user_request_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whols_user_request_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whols_user_request_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whols_request_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whols_request_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whols_request_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whols_request_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_whols_mark_this_product_as_wholesale_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_whols_mark_this_product_as_wholesale_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_whols_mark_this_product_as_wholesale_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_whols_mark_this_product_as_wholesale_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_whols_price_type_1_properties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_whols_price_type_1_properties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_whols_price_type_1_properties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_whols_price_type_1_properties'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_whols_product_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_whols_product_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_whols_product_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_whols_product_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_whols_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_whols_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_whols_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_whols_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whols_role_tax_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whols_role_tax_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whols_role_tax_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whols_role_tax_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_whols_price_type_2_properties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_whols_price_type_2_properties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_whols_price_type_2_properties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_whols_price_type_2_properties'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whols_saved_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whols_saved_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whols_saved_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whols_saved_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whols_test_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whols_test_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whols_test_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whols_test_mode'"
