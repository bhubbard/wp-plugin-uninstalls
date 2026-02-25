#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'add_to_cart_text'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%sslpfwerror' OR option_name LIKE '_site_transient_%sslpfwerror'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'occp_select2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'occp_select2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'occp_select2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'occp_select2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'occp_off_per'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'occp_off_per'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'occp_off_per'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'occp_off_per'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'occp_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'occp_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'occp_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'occp_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'occp_block_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'occp_block_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'occp_block_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'occp_block_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attr_cus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attr_cus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attr_cus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attr_cus'"
