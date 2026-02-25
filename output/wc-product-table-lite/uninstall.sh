#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'wcpt_name_change_notice_dismissed'
wp option delete 'wcpt_settings'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_currency_pos'
wp option delete 'wcpt_preview_template'
wp option delete 'wcpt_preview_template_max_width'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'wcpt_theme_customizer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcpt_settings_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcpt_variations_%' OR option_name LIKE '_site_transient_wcpt_variations_%'"
wp transient delete 'wcpt_custom_fields'

# Clear Cron Jobs
wp cron event delete 'wcpt_cleanup_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpt_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpt_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpt_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpt_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpt_preset_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpt_preset_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpt_preset_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpt_preset_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpt_preset_applied__message_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpt_preset_applied__message_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpt_preset_applied__message_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpt_preset_applied__message_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpt_preset_applied__slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpt_preset_applied__slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpt_preset_applied__slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpt_preset_applied__slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpt_preview_template_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpt_preview_template_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpt_preview_template_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpt_preview_template_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcpt_data_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcpt_data_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcpt_data_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcpt_data_%'"
