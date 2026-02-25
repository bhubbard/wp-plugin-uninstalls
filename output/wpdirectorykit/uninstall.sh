#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdk_membership_login_page'
wp option delete 'wdk_membership_dash_page'
wp option delete 'wdk_install_images_sizes_disable'
wp option delete 'wdk_is_category_enabled'
wp option delete 'wdk_is_location_enabled'
wp option delete 'wdk_listing_page'
wp option delete 'wdk_results_page'
wp option delete 'wdk_slug_listing_preview_page'
wp option delete 'wdk_slug_listing_preview_page_changed'
wp option delete 'wdk_is_address_enabled'
wp option delete 'wdk_is_results_page_require'
wp option delete 'wdk_seo_description'
wp option delete 'wdk_seo_keywords'
wp option delete 'wdk_card_slider_enable'
wp option delete 'elementor_load_fa4_shim'
wp option delete 'elementor_experiment-e_font_icon_svg'
wp option delete 'elementor_experiment-landing-pages'
wp option delete 'elementor_experiment-e_dom_optimization'
wp option delete 'wdk_bookings_is_hours_enabled'
wp option delete 'wdk_save_search_show_on_searchform'
wp option delete 'wdk_membership_profile_preview_page'
wp option delete 'wdk_recaptcha_site_key_v3'
wp option delete 'wdk_recaptcha_secret_key_v3'
wp option delete 'wdk_recaptcha_site_key'
wp option delete 'wdk_recaptcha_secret_key'
wp option delete 'wdk_membership_next_month_calculation_with_last_day'
wp option delete 'wdk_number_format_decimal_point'
wp option delete 'decimal_point'
wp option delete 'wdk_number_format_thousands_sep'
wp option delete 'thousands_separator'
wp option delete 'wdk_number_format_decimals'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wdk_default_lat'
wp option delete 'wdk_default_lng'
wp option delete 'wdk_compare_disable_on_result_items'
wp option delete 'wdk_bookings_calendar_single'
wp option delete 'wdk_geo_autodetect_by_ip_enable'
wp option delete 'wdk_geo_autodetect_by_google_js_enable'
wp option delete 'wdk_sub_listings_enable'
wp option delete 'wdk_multi_categories_other_enable'
wp option delete 'wdk_multi_locations_other_enable'
wp option delete 'wdk_experimental_features'
wp option delete 'dashboard_widget_options'
wp option delete 'wdk_experimental_listing_card_elementor_layout'
wp option delete 'wdk_autosuggestion_google_api_key'
wp option delete 'wdk_autosuggestion_rapidapi_api_key'
wp option delete 'wdk_membership_login_required_listing_preview'
wp option delete 'elementor_pro_theme_builder_conditions'
wp option delete 'wdk_disable_toolbar_on_content_editor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_location_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_category_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_results_page_require'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_address_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_lat'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_lng'"
wp option delete 'elementor_experiment-e_element_cache'
wp option delete 'elementor_element_cache_ttl'
wp option delete 'wdk_db_version'
wp option delete 'wdk_is_featured_enabled'
wp option delete 'wdk_is_rank_enabled'
wp option delete 'wdk_is_user_editor_enabled'
wp option delete 'wdk_is_post_content_enable'
wp option delete 'wdk_is_alt_agent_enabled'
wp option delete 'wdk_enable_filter_zero_decimal'
wp option delete 'wpdirectorykit_reviews_installed_on'
wp option delete 'wpdirectorykit_total_open_count'
wp option delete 'recently_activated'
wp option delete 'winter_mvc_active_plugins'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_admin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_admin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_admin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_admin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdirectorykit_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdirectorykit_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdirectorykit_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdirectorykit_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdirectorykit_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdirectorykit_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdirectorykit_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdirectorykit_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpdirectorykit_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpdirectorykit_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpdirectorykit_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpdirectorykit_reviews_already_did'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
