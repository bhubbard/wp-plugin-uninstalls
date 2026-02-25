#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'justtables_diagnostic_data_agreed'
wp option delete 'justtables_diagnostic_data_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer'"
wp option delete 'justtables_delete_data_fetch_cache'
wp option delete 'justtables_maybe_later_time'
wp option delete 'justtables_rating_already_rated'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'just_tables_installed'
wp option delete 'just_tables_version'
wp option delete 'csf_demo_mode'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_data' OR option_name LIKE '_site_transient_%_htiop_data'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jt_product_table_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jt_product_table_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jt_product_table_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jt_product_table_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
