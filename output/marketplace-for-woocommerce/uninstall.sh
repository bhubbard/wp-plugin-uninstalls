#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_marketplace_version'
wp option delete 'alg_mpwc_opt_commissions_create_zero'
wp option delete 'alg_mpwc_opt_vendor_product_tab_content'
wp option delete 'alg_mpwc_product_loop_vendor_info'
wp option delete 'default_post_edit_rows'
wp option delete 'alg_mpwc_blocked_users'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_mpwc_opt_public_page_rating'
wp option delete 'alg_mpwc_opt_public_page_rating_template'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alg_mpwc_vendor_rating_%' OR option_name LIKE '_site_transient_alg_mpwc_vendor_rating_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_mpwc_related_commissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_mpwc_related_commissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_mpwc_related_commissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_mpwc_related_commissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_mpwc_author_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_mpwc_author_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_mpwc_author_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_mpwc_author_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_mpwc_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_mpwc_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_mpwc_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_mpwc_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_mpwc_comission_fixed_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_mpwc_comission_fixed_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_mpwc_comission_fixed_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_mpwc_comission_fixed_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_mpwc_comission_percentage_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_mpwc_comission_percentage_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_mpwc_comission_percentage_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_mpwc_comission_percentage_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_mpwc_comission_final_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_mpwc_comission_final_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_mpwc_comission_final_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_mpwc_comission_final_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_mpwc_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_mpwc_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_mpwc_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_mpwc_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mpwc_sum_ref_comm_total_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mpwc_sum_ref_comm_total_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mpwc_sum_ref_comm_total_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mpwc_sum_ref_comm_total_val'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
