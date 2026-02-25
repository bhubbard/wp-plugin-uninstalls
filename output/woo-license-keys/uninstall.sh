#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_code'
wp option delete 'license_keys_response_errors_format'
wp option delete 'license_keys_enable_sku_val'
wp option delete 'license_keys_enable_domain_val'
wp option delete 'license_keys_override_headers'
wp option delete 'license_keys_header_allow_origin'
wp option delete 'license_keys_header_allow_methods'
wp option delete 'license_keys_header_allow_credentials'
wp option delete 'license_keys_include_user_email'
wp option delete 'license_keys_include_product_name'
wp option delete 'license_keys_include_product_sku'
wp option delete 'license_keys_api_handler'
wp option delete 'woocommerce_myaccount_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_desktop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_desktop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_desktop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_desktop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_10q_lk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_10q_lk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_10q_lk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_10q_lk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expire_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expire_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expire_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expire_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expire_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expire_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expire_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expire_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_limit_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_limit_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_limit_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_limit_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_no_limit_dev'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_no_limit_dev'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_no_limit_dev'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_no_limit_dev'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_offline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_offline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_offline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_offline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
