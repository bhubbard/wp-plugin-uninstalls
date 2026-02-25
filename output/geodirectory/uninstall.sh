#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geodirectory_version'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'geodirectory_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'geodir_rank_math_flush_rewrite'
wp option delete 'geodirectory_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'geodirectory_admin_notice_%'"
wp option delete 'ayecode_connect_licences'
wp option delete 'exup_keys'
wp option delete 'wp_country_database_version'
wp option delete 'gd_found_posts_cache'
wp option delete 'geodir_post_types'
wp option delete 'geodirectory_tracker_last_send'
wp option delete 'geodirectory_tracker_ua'
wp option delete 'geodiradvancesearch_db_version'
wp option delete 'geodir_advance_search_db_version'
wp option delete 'geodirclaim_db_version'
wp option delete 'geodir_claim_db_version'
wp option delete 'geodir_custom_posts_db_version'
wp option delete 'geodir_cp_db_version'
wp option delete 'geodirevents_db_version'
wp option delete 'geodir_event_db_version'
wp option delete 'geodir_franchise_db_version'
wp option delete 'geodir_franchise_posttypes'
wp option delete 'geodirlocation_db_version'
wp option delete 'geodir_location_db_version'
wp option delete 'geodir_payments_db_version'
wp option delete 'geodir_pricing_db_version'
wp option delete 'geodir_reviewratings_db_version'
wp option delete 'geodir_reviewrating_db_version'
wp option delete 'geodir_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'geodir_cpt_img_%'"
wp option delete 'geodir_disable_rating_cpt'
wp option delete 'geodir_allow_posttype_frontend'
wp option delete 'geodir_cpt_disable_location'
wp option delete 'geodir_default_location'
wp option delete 'geodir_reviewrating_fa_full_rating_color'
wp option delete 'geodir_add_listing_page'
wp option delete 'geodir_location_page'
wp option delete 'geodir_term_condition_page'
wp option delete 'site_email_name'
wp option delete 'site_email'
wp option delete 'geodir_search_dist'
wp option delete 'geodir_search_dist_1'
wp option delete 'geodir_search_dist_2'
wp option delete 'geodir_search_near_addition'
wp option delete 'geodir_new_post_default_status'
wp option delete 'geodir_search_field_default_text'
wp option delete 'geodir_near_field_default_text'
wp option delete 'geodir_search_button_label'
wp option delete 'geodir_default_marker_icon'
wp option delete 'geodir_exclude_post_type_on_map'
wp option delete 'geodir_exclude_cat_on_map'
wp option delete 'geodir_notify_post_submit'
wp option delete 'geodir_post_submited_success_email_subject_admin'
wp option delete 'geodir_post_submited_success_email_content_admin'
wp option delete 'geodir_post_submited_success_email_subject'
wp option delete 'geodir_post_submited_success_email_content'
wp option delete 'geodir_post_published_email_subject'
wp option delete 'geodir_post_published_email_content'
wp option delete 'geodir_notify_post_edited'
wp option delete 'geodir_post_edited_email_subject_admin'
wp option delete 'geodir_post_edited_email_content_admin'
wp option delete 'geodir_default_map_language'
wp option delete 'geodir_upload_max_filesize'
wp option delete 'geodir_search_word_limit'
wp option delete 'geodir_bcc_listing_published'
wp option delete 'geodir_disable_perm_delete'
wp option delete 'geodir_page_title_pt'
wp option delete 'geodir_meta_title_pt'
wp option delete 'geodir_meta_desc_pt'
wp option delete 'geodir_page_title_cat-listing'
wp option delete 'geodir_meta_title_listing'
wp option delete 'geodir_meta_desc_listing'
wp option delete 'geodir_page_title_tag'
wp option delete 'geodir_meta_title_detail'
wp option delete 'geodir_meta_desc_detail'
wp option delete 'geodir_meta_title_location'
wp option delete 'geodir_meta_desc_location'
wp option delete 'geodir_meta_title_search'
wp option delete 'geodir_meta_desc_search'
wp option delete 'geodir_page_title_add-listing'
wp option delete 'geodir_page_title_edit-listing'
wp option delete 'geodir_meta_title_add-listing'
wp option delete 'geodir_meta_desc_add-listing'
wp option delete 'geodir_load_map'
wp option delete 'geodir_lazy_load'
wp option delete 'geodir_google_api_key'
wp option delete 'geodir_un_geodirectory'
wp option delete 'geodir_enable_map_cache'
wp option delete 'geodir_listing_no_img'
wp option delete 'geodir_default_rating_star_icon'
wp option delete 'geodir_ga_stats'
wp option delete 'geodir_ga_account_id'
wp option delete 'geodir_ga_refresh_time'
wp option delete 'geodir_ga_auto_refresh'
wp option delete 'geodir_ga_auth_code'
wp option delete 'geodir_ga_add_tracking_code'
wp option delete 'geodir_ga_anonymize_ip'
wp option delete 'geodir_ga_tracking_code'
wp option delete 'gd_ga_access_token'
wp option delete 'gd_ga_refresh_token'
wp option delete 'geodir_ga_client_id'
wp option delete 'geodir_ga_client_secret'
wp option delete 'geodir_add_location_url'
wp option delete 'geodir_show_location_url'
wp option delete 'geodir_add_categories_url'
wp option delete 'geodir_listing_expiry'
wp option delete 'geodir_listing_ex_status'
wp option delete 'geodir_paid_listing_status'
wp option delete 'geodir_payment_free_package_renew'
wp option delete 'geodir_post_renew_success_email_subject'
wp option delete 'geodir_post_renew_success_email_content'
wp option delete 'geodir_post_upgrade_success_email_subject'
wp option delete 'geodir_post_upgrade_success_email_content'
wp option delete 'geodir_listing_preexpiry_notice_disable'
wp option delete 'geodir_renew_email_subject'
wp option delete 'geodir_renew_email_content'
wp option delete 'geodir_post_renew_success_email_subject_admin'
wp option delete 'geodir_post_renew_success_email_content_admin'
wp option delete 'geodir_post_upgrade_success_email_subject_admin'
wp option delete 'geodir_post_upgrade_success_email_content_admin'
wp option delete 'geodir_listing_preexpiry_notice_days'
wp option delete 'geodir_listing_preexpiry_notice_days2'
wp option delete 'geodir_listing_preexpiry_notice_days3'
wp option delete 'geodir_pricing_version'
wp option delete 'geodir_linked_post_types'
wp option delete 'geodir_un_geodir_custom_posts'
wp option delete 'geodir_cp_version'
wp option delete 'geodir_home_go_to'
wp option delete 'geodir_enable_country'
wp option delete 'geodir_location_hide_country_part'
wp option delete 'geodir_selected_countries'
wp option delete 'geodir_enable_region'
wp option delete 'geodir_location_hide_region_part'
wp option delete 'geodir_selected_regions'
wp option delete 'geodir_enable_city'
wp option delete 'geodir_selected_cities'
wp option delete 'location_neighbourhoods'
wp option delete 'location_address_fill'
wp option delete 'location_dropdown_all'
wp option delete 'location_set_address_disable'
wp option delete 'location_set_pin_disable'
wp option delete 'geodir_location_no_of_records'
wp option delete 'geodir_location_disable_term_auto_count'
wp option delete 'gd_location_sitemap_exclude_location'
wp option delete 'gd_location_sitemap_exclude_cats'
wp option delete 'gd_location_sitemap_exclude_tags'
wp option delete 'geodir_un_geodir_location_manager'
wp option delete 'geodir_location_version'
wp option delete 'geodir_enable_autocompleter'
wp option delete 'geodir_autocompleter_autosubmit'
wp option delete 'geodir_autocompleter_min_chars'
wp option delete 'geodir_autocompleter_max_results'
wp option delete 'geodir_autocompleter_filter_location'
wp option delete 'geodir_enable_autocompleter_near'
wp option delete 'geodir_autocompleter_autosubmit_near'
wp option delete 'geodir_first_load_redirect'
wp option delete 'geodir_autolocate_ask'
wp option delete 'geodir_near_me_dist'
wp option delete 'geodir_search_display_searched_params'
wp option delete 'geodir_un_geodir_advance_search_filters'
wp option delete 'geodir_advance_search_version'
wp option delete 'geodir_event_defalt_filter'
wp option delete 'geodir_event_disable_recurring'
wp option delete 'geodir_event_hide_past_dates'
wp option delete 'geodir_event_infowindow_dates_count'
wp option delete 'geodir_event_infowindow_dates_filter'
wp option delete 'geodir_event_date_format_feild'
wp option delete 'geodir_event_date_format'
wp option delete 'geodir_event_date_use_custom'
wp option delete 'geodir_event_date_format_custom'
wp option delete 'geodir_event_link_any'
wp option delete 'geodir_event_version'
wp option delete 'geodir_reviewrating_enable_rating'
wp option delete 'geodir_reviewrating_enable_images'
wp option delete 'geodir_reviewrating_enable_review'
wp option delete 'geodir_reviewrating_enable_sorting'
wp option delete 'geodir_un_geodir_review_rating_manager'
wp option delete 'geodir_reviewrating_version'
wp option delete 'geodir_claim_force_upgrade'
wp option delete 'geodir_un_geodir_claim_listing'
wp option delete 'geodir_claim_version'
wp option delete 'geodir_franchise_hide_main_all'
wp option delete 'geodir_franchise_hide_viewing'
wp option delete 'geodir_franchise_client_email_subject_payment_franchises'
wp option delete 'geodir_franchise_client_email_message_payment_franchises'
wp option delete 'geodir_franchise_bcc_admin_payment_franchises'
wp option delete 'uninstall_geodir_franchise'
wp option delete 'geodir_franchise_version'
wp option delete 'geodir_taxonomies'
wp option delete 'geodir_v2_upgrade'
wp option delete 'geodirectory_admin_footer_text_rated'
wp option delete 'uwp_activation_redirect'
wp option delete 'uwp_setup_wizard_notice'
wp option delete 'geodirlists_db_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'show_comments_cookies_opt_in'
wp option delete 'generateblocks_dynamic_css_posts'
wp option delete 'wpbf_settings'
wp option delete 'elementor_pro_theme_builder_conditions'
wp option delete 'ayecode-ui-settings'
wp option delete 'ayecode_connect_blog_token'
wp option delete 'aui_options'
wp option delete 'wp-font-awesome-settings'
wp option delete 'rgmk_google_map_api_key'

# Delete Transients
wp transient delete 'geodir_admin_upgrade_notice'
wp transient delete 'geodir_addons_sections'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gd_addons_section_%' OR option_name LIKE '_site_transient_gd_addons_section_%'"
wp transient delete 'cached_dummy_images'
wp transient delete '_gd_activation_redirect'
wp transient delete 'geodir_cache_excluded_uris'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp transient delete 'gd_addons_section_addons'
wp transient delete 'gd_addons_section_themes'
wp transient delete 'geodir_post_custom_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gd_avg_num_votes_%' OR option_name LIKE '_site_transient_gd_avg_num_votes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gd_avg_rating_%' OR option_name LIKE '_site_transient_gd_avg_rating_%'"
wp transient delete 'geodir_elementor_templates'
wp transient delete 'geodir_rand_seed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_geodir_ip_location_%' OR option_name LIKE '_site_transient_geodir_ip_location_%'"
wp transient delete 'geodir_term_counts'
wp transient delete 'wp-font-awesome-settings-version'

# Clear Cron Jobs
wp cron event delete 'geodirectory_tracker_send_event'
wp cron event delete 'geodir_plugin_background_installer'
wp cron event delete 'geodir_flush_rewrite_rules'
wp cron event delete 'geodir_weekly_cache_clear_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_cat_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_cat_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_cat_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_cat_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_cat_font_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_cat_font_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_cat_font_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_cat_font_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_cat_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_cat_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_cat_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_cat_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_cat_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_cat_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_cat_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_cat_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_cat_default_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_cat_default_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_cat_default_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_cat_default_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_cat_top_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_cat_top_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_cat_top_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_cat_top_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_cat_bottom_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_cat_bottom_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_cat_bottom_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_cat_bottom_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gd_franchise_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gd_franchise_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gd_franchise_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gd_franchise_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_facebook_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_facebook_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_facebook_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_facebook_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ast-site-content-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ast-site-content-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ast-site-content-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ast-site-content-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-content-style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-content-style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-content-style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-content-style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-sidebar-style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-sidebar-style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-sidebar-style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-sidebar-style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pyre_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pyre_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pyre_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pyre_page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate-footer-widget-meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate-footer-widget-meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate-footer-widget-meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate-footer-widget-meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate-disable-headline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate-disable-headline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate-disable-headline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate-disable-headline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generateblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generateblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generateblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generateblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pyre_page_bg_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pyre_page_bg_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pyre_page_bg_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pyre_page_bg_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pyre_display_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pyre_display_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pyre_display_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pyre_display_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbg_selected_sidebar_replacement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbg_selected_sidebar_replacement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbg_selected_sidebar_replacement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbg_selected_sidebar_replacement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sbg_selected_sidebar_2_replacement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sbg_selected_sidebar_2_replacement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sbg_selected_sidebar_2_replacement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sbg_selected_sidebar_2_replacement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pyre_sidebar_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pyre_sidebar_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pyre_sidebar_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pyre_sidebar_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pyre_sidebar_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pyre_sidebar_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pyre_sidebar_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pyre_sidebar_sticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tie_sidebar_pos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tie_sidebar_pos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tie_sidebar_pos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tie_sidebar_pos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tie_sidebar_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tie_sidebar_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tie_sidebar_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tie_sidebar_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tie_sidebar_narrow_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tie_sidebar_narrow_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tie_sidebar_narrow_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tie_sidebar_narrow_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_replacements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_replacements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_replacements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_replacements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'header_title_bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'header_title_bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'header_title_bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'header_title_bar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sidebar2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sidebar2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sidebar2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sidebar2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsm_primary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsm_primary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsm_primary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsm_primary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsm_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsm_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsm_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsm_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss_sidebar_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss_sidebar_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss_sidebar_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss_sidebar_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbf_sidebar_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbf_sidebar_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbf_sidebar_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbf_sidebar_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbf_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbf_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbf_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbf_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '__%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '__%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '__%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '__%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gd_logged_out_post_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gd_logged_out_post_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gd_logged_out_post_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gd_logged_out_post_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gd_user_favourite_post%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gd_user_favourite_post%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gd_user_favourite_post%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gd_user_favourite_post%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gd_comment_author_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gd_comment_author_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gd_comment_author_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gd_comment_author_notified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gd_listing_author_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gd_listing_author_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gd_listing_author_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gd_listing_author_notified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_gd_post_count_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_gd_post_count_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_gd_post_count_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_gd_post_count_%'"
