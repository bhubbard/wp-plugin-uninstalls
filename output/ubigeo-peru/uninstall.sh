#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ubigeo_checkout_checkbox'
wp option delete 'ubigeo_emails_checkbox'
wp option delete 'ubigeo_thanks_checkbox'
wp option delete 'ubigeo_title_checkbox'
wp option delete 'ubigeo_format_checkbox'
wp option delete 'ubigeo_priority_method_free_checkbox'
wp option delete 'rt_ubigeo_peru_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_departamento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_departamento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_departamento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_departamento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_provincia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_provincia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_provincia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_provincia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_distrito'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_distrito'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_distrito'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_distrito'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_departamento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_departamento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_departamento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_departamento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_provincia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_provincia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_provincia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_provincia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_distrito'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_distrito'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_distrito'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_distrito'"
