#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csellwoo_enabled'
wp option delete 'csellwoo_licenses_data'
wp option delete 'active_sitewide_plugins'
wp option delete 'csellwoo_buttonclasses'
wp option delete 'csellwoo_formclasses'
wp option delete 'csellwoo_alertmsg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp option delete 'csellwoo_rcd'
wp option delete 'csellwoo_pnotice'
wp option delete 'csellwoo_pnoticetext'
wp option delete 'csellwoo_ptype'
wp option delete 'woocommerce_csellwoo_order_email_settings'
wp option delete 'csellwoo_ptitle'
wp option delete 'csellwoo_pdesc'
wp option delete 'csellwoo_showproducts'
wp option delete 'csellwoo_spf'
wp option delete 'csellwoo_loginlink'
wp option delete 'wc_price_based_country_version'
wp option delete '_oga_wppbc_countries_groups'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'csellwoo_unistall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_protected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_protected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_protected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_protected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_csellwoo_lic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_csellwoo_lic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_csellwoo_lic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_csellwoo_lic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptext1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptext1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptext1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptext1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csellwoo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csellwoo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csellwoo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csellwoo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data'"
