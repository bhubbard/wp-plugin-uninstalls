#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcfgf_settings'
wp option delete 'mcfgf_conversation_generator'
wp option delete 'mtfcf7_conversation_generator'
wp option delete 'mcfgf_basics'
wp option delete 'mcfgf_install'
wp option delete 'gfp_stripe_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_mcfgf_ag_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_mcfgf_ag_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_mcfgf_ag_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_mcfgf_ag_notice'"
