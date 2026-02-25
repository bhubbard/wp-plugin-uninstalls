#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'codesigner-docs_json'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'mother_day_pointer_dismiss'
wp option delete 'complete_setting_close'
wp option delete 'notice_BIRTHDAY04'
wp option delete 'recurring_every_day_banner'
wp option delete 'codesigner_dismiss_notice_checkout'
wp option delete 'codesigner_dismiss_notice_email'
wp option delete 'codesigner_dismiss_notice_invoice'
wp option delete 'codesigner_version'
wp option delete 'codesigner_install_time'
wp option delete 'codesigner-activated'
wp option delete 'codesigner-year_end_deal_campaign-dec-21_dismissed'
wp option delete 'codesigner_setup_done'
wp option delete 'codesigner_widgets'
wp option delete 'codesigner_modules'
wp option delete '_wcd_checkout_fields'
wp option delete '_codesigner-widget-usage'
wp option delete 'woocommerce_version'
wp option delete 'elementor_version'
wp option delete 'elementor_pro_version'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'wl_enable_debug'
wp option delete 'codesigner_tools'
wp option delete 'wcd_email_designer'
wp option delete 'codesigner_email_designer'
wp option delete 'wcd_templates'
wp option delete 'codesigner_templates'
wp option delete 'wl_library_cache'
wp option delete 'codesigner_library_cache'
wp option delete 'codesigner_checkout_fields'
wp option delete 'wcd_help'
wp option delete 'codesigner_help'
wp option delete 'codesigner_add_to_cart_text'
wp option delete 'codesigner_remind_upgrade_pro'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismissed'"
wp option delete 'codesigner_currency_switcher'
wp option delete 'woocommerce_currency'
wp option delete '_site_transient_update_plugins'
wp option delete '_test_shipping2'
wp option delete '_test_shipping'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cx-plugin-info-%' OR option_name LIKE '_site_transient_cx-plugin-info-%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'codexpert-daily'
wp cron event delete 'codesigner_install_plugins'
wp cron event delete 'pluggable-daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_backorder_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_backorder_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_backorder_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_backorder_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'section_badge_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'section_badge_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'section_badge_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'section_badge_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_bpd_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_bpd_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_bpd_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_bpd_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_currency_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_currency_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_currency_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_currency_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_enable_partial_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_enable_partial_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_enable_partial_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_enable_partial_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_partial_amount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_partial_amount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_partial_amount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_partial_amount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_percentage_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_percentage_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_percentage_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_percentage_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_fixed_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_fixed_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_fixed_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_fixed_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_minimum_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_minimum_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_minimum_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_minimum_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_preorder_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_preorder_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_preorder_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_preorder_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codesigner-vs-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codesigner-vs-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codesigner-vs-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codesigner-vs-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codesigner-taxonomy-label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codesigner-taxonomy-label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codesigner-taxonomy-label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codesigner-taxonomy-label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codesigner-image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codesigner-image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codesigner-image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codesigner-image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codesigner-texo_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codesigner-texo_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codesigner-texo_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codesigner-texo_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codesigner_quick_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codesigner_quick_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codesigner_quick_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codesigner_quick_checkout'"
