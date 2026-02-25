#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith_wapo_style_label_padding'
wp option delete 'yith_wapo_hide_images'
wp option delete 'yith_wapo_show_image_in_cart'
wp option delete 'yith_wapo_button_in_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'yith_wapo_show_options_in_cart'
wp option delete 'yith_wapo_select_options_label'
wp option delete 'yith_wapo_options_position'
wp option delete 'yith_wapo_upload_allowed_file_types'
wp option delete 'yith_wapo_upload_max_file_size'
wp option delete 'yith_wapo_total_price_box'
wp option delete 'yith_wapo_replace_product_price'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'yith_wapo_hide_button_if_required'
wp option delete 'yith_wapo_required_option_text'
wp option delete 'yith_wapo_uploads_folder'
wp option delete 'yith_wapo_attach_file_to_email'
wp option delete 'yith_wapo_style_addon_titles'
wp option delete 'yith_wapo_style_addon_background'
wp option delete 'yith_wapo_v2'
wp option delete 'yith_wapo_remove_del_column'
wp option delete 'yith_wapo_db_version'
wp option delete 'yith_wapo_db_update_scheduled_for'
wp option delete 'yith_wapo_db_version_option'
wp option delete 'yith_wpv_vendors_option_advanced_product_options_management'
wp option delete 'yith_wapo_hide_options_in_order_email'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'yith_wapo_tooltip_color'
wp option delete 'yith_wapo_style_addon_padding'
wp option delete 'yith_wapo_style_accent_color'
wp option delete 'yith_wapo_style_borders_color'
wp option delete 'yith_wapo_price_box_colors'
wp option delete 'yith_wapo_upload_file_colors'
wp option delete 'yith_wapo_required_option_color'
wp option delete 'yith_wapo_style_checkbox_style'
wp option delete 'yith_wapo_style_color_swatch_style'
wp option delete 'yith_wapo_style_label_font_size'
wp option delete 'yith_wapo_style_description_font_size'
wp option delete 'yith_wapo_style_color_swatch_size'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"
wp option delete 'yith_wapo_show_tooltips'
wp option delete 'yith_wapo_tooltip_position'
wp option delete 'yith_wapo_style_form_style'
wp option delete 'yith-wapo-hide-titles-and-images'
wp option delete 'yith_wapo_show_in_toggle'
wp option delete 'yith_wapo_show_toggle_opened'
wp option delete 'yith_wccl_db_version'

# Delete Transients
wp transient delete 'yith_wapo_migrating_from_v1_to_V2'
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapo_disable_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapo_disable_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapo_disable_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapo_disable_global'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
