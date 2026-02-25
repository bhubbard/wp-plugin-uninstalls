-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tfap_filter_order', 'access_package_hero_background_image', 'access_package_custom_fallback_image', 'access_package_json_file', 'access_package_token', 'access_package_primary_color', 'access_package_alt_color', 'access_package_text_color', 'access_package_font_family', 'access_package_interest_form_message', 'access_package_finance_bg_color', 'access_package_finance_text_color', 'access_package_custom_heading_size', 'access_package_dnb_integration', 'access_package_dnb_dealer_id', 'access_package_dnb_button_text', 'access_package_finance_hide_monthly_price', 'access_package_ex_vat_price', 'access_package_filters_max_displayed_mobile', 'access_package_filters_max_displayed_desktop', 'access_package_tight_layout', 'access_package_custom_heading', 'access_package_single_car_content', 'access_package_scroll_to_mail', 'access_package_enable_dealer_form');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('published_date', 'changed_date', 'tfap_latest_cars', 'tfap_hide_filters', 'tfap_content_before_filters', 'tfap_custom_hero_title', 'tfap_remove_hero_title', 'tfap_from_price', 'tfap_to_price', 'tfap_make', 'tfap_dealerName', 'tfap_used', 'tfap_leasing', 'tfap_city', 'tfap_type', 'tfap_model');
DELETE FROM wp_usermeta WHERE meta_key IN ('published_date', 'changed_date', 'tfap_latest_cars', 'tfap_hide_filters', 'tfap_content_before_filters', 'tfap_custom_hero_title', 'tfap_remove_hero_title', 'tfap_from_price', 'tfap_to_price', 'tfap_make', 'tfap_dealerName', 'tfap_used', 'tfap_leasing', 'tfap_city', 'tfap_type', 'tfap_model');
DELETE FROM wp_termmeta WHERE meta_key IN ('published_date', 'changed_date', 'tfap_latest_cars', 'tfap_hide_filters', 'tfap_content_before_filters', 'tfap_custom_hero_title', 'tfap_remove_hero_title', 'tfap_from_price', 'tfap_to_price', 'tfap_make', 'tfap_dealerName', 'tfap_used', 'tfap_leasing', 'tfap_city', 'tfap_type', 'tfap_model');
DELETE FROM wp_commentmeta WHERE meta_key IN ('published_date', 'changed_date', 'tfap_latest_cars', 'tfap_hide_filters', 'tfap_content_before_filters', 'tfap_custom_hero_title', 'tfap_remove_hero_title', 'tfap_from_price', 'tfap_to_price', 'tfap_make', 'tfap_dealerName', 'tfap_used', 'tfap_leasing', 'tfap_city', 'tfap_type', 'tfap_model');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tfap_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tfap_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tfap_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tfap_%';

