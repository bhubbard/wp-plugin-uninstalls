#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcwm_install_date'
wp option delete 'wcwm_wholesale_only_store'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'wcwm_disable_auto_approval'
wp option delete 'wcwm_admin_is_wholesaler'
wp option delete 'wcwm_login_page'
wp option delete 'wcwm_disable_tax'
wp option delete 'wcwm_registration_page_id'
wp option delete 'wcwm_show_original_price'
wp option delete 'wcwm_disable_coupon'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'wcwm_delete_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_wholesale_manager_%' OR option_name LIKE '_site_transient_wc_wholesale_manager_%'"
wp transient delete 'wcwm_activated'
wp transient delete 'wcwm_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcwm_discounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcwm_discounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcwm_discounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcwm_discounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcwm_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcwm_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcwm_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcwm_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcwm_allow_default_wp_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcwm_allow_default_wp_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcwm_allow_default_wp_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcwm_allow_default_wp_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcwm_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcwm_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcwm_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcwm_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_b2b_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_b2b_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_b2b_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_b2b_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcwm_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcwm_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcwm_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcwm_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_pricing'"
