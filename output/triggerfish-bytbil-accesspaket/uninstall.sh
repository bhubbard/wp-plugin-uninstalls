#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tfap_filter_order'
wp option delete 'access_package_hero_background_image'
wp option delete 'access_package_custom_fallback_image'
wp option delete 'access_package_json_file'
wp option delete 'access_package_token'
wp option delete 'access_package_primary_color'
wp option delete 'access_package_alt_color'
wp option delete 'access_package_text_color'
wp option delete 'access_package_font_family'
wp option delete 'access_package_interest_form_message'
wp option delete 'access_package_finance_bg_color'
wp option delete 'access_package_finance_text_color'
wp option delete 'access_package_custom_heading_size'
wp option delete 'access_package_dnb_integration'
wp option delete 'access_package_dnb_dealer_id'
wp option delete 'access_package_dnb_button_text'
wp option delete 'access_package_finance_hide_monthly_price'
wp option delete 'access_package_ex_vat_price'
wp option delete 'access_package_filters_max_displayed_mobile'
wp option delete 'access_package_filters_max_displayed_desktop'
wp option delete 'access_package_tight_layout'
wp option delete 'access_package_custom_heading'
wp option delete 'access_package_single_car_content'
wp option delete 'access_package_scroll_to_mail'
wp option delete 'access_package_enable_dealer_form'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'published_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'published_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'published_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'published_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'changed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'changed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'changed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'changed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tfap_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tfap_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tfap_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tfap_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_latest_cars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_latest_cars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_latest_cars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_latest_cars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_hide_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_hide_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_hide_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_hide_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_content_before_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_content_before_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_content_before_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_content_before_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_custom_hero_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_custom_hero_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_custom_hero_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_custom_hero_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_remove_hero_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_remove_hero_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_remove_hero_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_remove_hero_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_from_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_from_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_from_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_from_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_to_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_to_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_to_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_to_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_make'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_make'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_make'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_make'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_dealerName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_dealerName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_dealerName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_dealerName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_leasing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_leasing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_leasing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_leasing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfap_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfap_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfap_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfap_model'"
