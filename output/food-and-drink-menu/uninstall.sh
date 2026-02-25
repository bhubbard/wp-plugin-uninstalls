#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FDM_Trial_Happening'
wp option delete 'fdm-pro-was-active'
wp option delete 'food-and-drink-menu-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fdm_menu_item_flag_icon_%'"
wp option delete 'FDMU_Trial_Happening'
wp option delete 'fdm-hide-upgrade-box'
wp option delete 'fdm-installation-time'
wp option delete 'fdm-delete-order-check'
wp option delete 'fdm-ultimate-license-key'
wp option delete 'fdm-permission-level'
wp option delete 'fdmp_license_key'
wp option delete 'fdm-review-ask-time'
wp option delete 'food-and-drink-menu-extra-settings'

# Delete Transients
wp transient delete 'fdm-getting-started'
wp transient delete 'fdm-plugin-updated'
wp transient delete 'fsp-helper-notice-dismissed'
wp transient delete 'fdm-ait-iat-plugin-notice-dismissed'
wp transient delete 'fdm-admin-install-notice'
wp transient delete 'fdm-credit-information'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_item_price_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_item_price_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_item_price_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_item_price_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_item_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_item_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_item_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_item_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fdm_ordering_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fdm_ordering_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fdm_ordering_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fdm_ordering_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fdm_menu_column_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fdm_menu_column_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fdm_menu_column_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fdm_menu_column_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_menu_footer_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_menu_footer_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_menu_footer_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_menu_footer_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fdm_menu_item_custom_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fdm_menu_item_custom_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fdm_menu_item_custom_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fdm_menu_item_custom_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fdm_related_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fdm_related_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fdm_related_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fdm_related_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_item_special'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_item_special'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_item_special'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_item_special'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_item_source_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_item_source_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_item_source_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_item_source_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_item_source_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_item_source_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_item_source_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_item_source_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_item_source_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_item_source_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_item_source_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_item_source_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_item_source_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_item_source_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_item_source_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_item_source_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fdm_menu_section_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fdm_menu_section_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fdm_menu_section_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fdm_menu_section_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_menu_column_one'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_menu_column_one'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_menu_column_one'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_menu_column_one'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_menu_column_two'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_menu_column_two'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_menu_column_two'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_menu_column_two'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fdm_menu_section_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fdm_menu_section_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fdm_menu_section_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fdm_menu_section_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_data'"
