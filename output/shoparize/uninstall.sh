#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shoparize_partner_tracking'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoparize_partner_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoparize_partner_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoparize_partner_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoparize_partner_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoparize_partner_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoparize_partner_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoparize_partner_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoparize_partner_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shoparize_partner_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shoparize_partner_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shoparize_partner_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shoparize_partner_condition'"
