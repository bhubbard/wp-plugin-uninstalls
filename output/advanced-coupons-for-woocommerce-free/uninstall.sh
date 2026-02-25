#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'acfw_installed_by'
wp option delete 'acfwf_bogo_migrate_coupon_type'
wp option delete 'acfw_bogo_deals_default_values_set'
wp option delete 'acfwf_activation_code_triggered'
wp option delete 'acfwf_feature_counts_initialized'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'pushengage_installed_by'
wp option delete 'uncannyautomator_source'
wp option delete 'storeagent_installed_by'
wp option delete 'wwp_installed_by'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'acfw_option_update_data'
wp option delete 'acfw_slmw_license_key'
wp option delete 'acfw_license_activated'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_base_color'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_flush_rules' OR option_name LIKE '_site_transient_%_flush_rules'"
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acfwf_hide_free_guide_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acfwf_hide_free_guide_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acfwf_hide_free_guide_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acfwf_hide_free_guide_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushengage_subscriber_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushengage_subscriber_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushengage_subscriber_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushengage_subscriber_ids'"
