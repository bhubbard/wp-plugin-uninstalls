#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_productdyno_api_key'

# Delete Transients
wp transient delete 'pd_products_data'
wp transient delete 'pd_collections_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_collection_products_data_%' OR option_name LIKE '_site_transient_pd_collection_products_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_product_data_%' OR option_name LIKE '_site_transient_pd_product_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_product_login_page_%' OR option_name LIKE '_site_transient_pd_product_login_page_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_product_forgot_password_page_%' OR option_name LIKE '_site_transient_pd_product_forgot_password_page_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_product_reset_password_page_%' OR option_name LIKE '_site_transient_pd_product_reset_password_page_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_product_register_page_%' OR option_name LIKE '_site_transient_pd_product_register_page_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_collection_data_%' OR option_name LIKE '_site_transient_pd_collection_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_collection_login_page_%' OR option_name LIKE '_site_transient_pd_collection_login_page_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_collection_forgot_password_page_%' OR option_name LIKE '_site_transient_pd_collection_forgot_password_page_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_collection_reset_password_page_%' OR option_name LIKE '_site_transient_pd_collection_reset_password_page_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pd_collection_register_page_%' OR option_name LIKE '_site_transient_pd_collection_register_page_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pd_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pd_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pd_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pd_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pd_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pd_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pd_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pd_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pd_collection_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pd_collection_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pd_collection_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pd_collection_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pd_collection_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pd_collection_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pd_collection_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pd_collection_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pd_no_access_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pd_no_access_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pd_no_access_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pd_no_access_page_id'"
