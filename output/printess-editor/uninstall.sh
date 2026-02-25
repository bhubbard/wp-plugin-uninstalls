#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'printess_service_token'
wp option delete 'printess_api_domain'
wp option delete 'printess_shop_token'
wp option delete 'printess_embed_html_url'
wp option delete 'printess_ids_to_hide'
wp option delete 'printess_class_names_to_hide'
wp option delete 'printess_access_token'
wp option delete 'printess_debug'
wp option delete 'printess_show_customize_on_archive_page'
wp option delete 'printess_add_to_cart_after_customization'
wp option delete 'printess_approval'
wp option delete 'printess_customize_button_class'
wp option delete 'printess_customize_button_id'
wp option delete 'printess_hide_internal_customize_button_classes'
wp option delete 'printess_write_tracking_events'
wp option delete 'printess_default_theme'
wp option delete 'printess_user_fields'
wp option delete 'printess_thumbnail_width'
wp option delete 'printess_thumbnail_height'
wp option delete 'printess_legal_notice'
wp option delete 'printess_enforce_design_name'
wp option delete 'printess_delete_original_basket_item_only_on_same_design_name'
wp option delete 'printess_warn_on_tab_change'
wp option delete 'printess_disable_basket_warning_on_unpersonalized_items'
wp option delete 'printess_acf_field_mapping'
wp option delete 'printess_use_acf_name_instead_of_label'
wp option delete 'printess_display_save_warning'
wp option delete 'printess_image_autoupload_disabled'
wp option delete 'printess_show_prices_in_editor'
wp option delete 'printess_show_product_name_in_editor'
wp option delete 'printess_output_format'
wp option delete 'printess_jpg_compression'
wp option delete 'printess_enable_design_save'
wp option delete 'printess_saved_design_lifetime'
wp option delete 'printess_ordered_design_lifetime'
wp option delete 'printess_system_default_dropshipping'
wp option delete 'printess_ask_for_name_on_resave'
wp option delete 'printess_show_original_product_in_basket'
wp option delete 'printess_displaylineitemid'
wp option delete 'printess_saved_designs_db_version'
wp option delete 'printess_last_cleanup'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_enable_ajax_add_to_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_dropshipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_dropshipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_dropshipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_dropshipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_merge_template_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_merge_template_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_merge_template_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_merge_template_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_merge_template_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_merge_template_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_merge_template_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_merge_template_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_merge_template_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_merge_template_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_merge_template_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_merge_template_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_output_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_output_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_output_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_output_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_dpi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_dpi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_dpi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_dpi'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_jpg_compression'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_jpg_compression'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_jpg_compression'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_jpg_compression'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_output_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_output_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_output_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_output_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_item_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_item_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_item_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_item_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_cart_redirect_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_cart_redirect_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_cart_redirect_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_cart_redirect_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_ui_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_ui_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_ui_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_ui_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_editor_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_editor_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_editor_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_editor_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_use_record_count_as_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_use_record_count_as_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_use_record_count_as_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_use_record_count_as_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_template_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_template_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_template_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_template_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printess_template_is_merge_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printess_template_is_merge_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printess_template_is_merge_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printess_template_is_merge_template'"
