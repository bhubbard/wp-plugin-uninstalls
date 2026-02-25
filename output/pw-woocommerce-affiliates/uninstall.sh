#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'pw_affiliates_default_commission'
wp option delete 'pw_affiliates_commission_before_tax'
wp option delete 'pw_affiliates_program_name'
wp option delete 'pwwa_url_fields'
wp option delete 'pwwa_affiliate_endpoint'
wp option delete 'pw_affiliates_use_builtin_jquery_styles'
wp option delete 'pw_affiliates_cookie_days'
wp option delete 'pw_affiliates_show_code_in_cart'
wp option delete 'pw_affiliates_show_code_in_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pw_affiliates_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pw_affiliates_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pw_affiliates_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pw_affiliates_commission'"
