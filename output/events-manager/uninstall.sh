#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_data'
wp option delete 'dbem_ms_mainblog_locations'
wp option delete 'dbem_dismiss_events_page'
wp option delete 'dbem_ms_update_nag'
wp option delete 'disable_em_wpml_warning'
wp option delete 'em_check_dev_version'
wp option delete 'dbem_advanced_formatting'
wp option delete 'dbem_flush_needed'
wp option delete 'dbem_repeating_enabled'
wp option delete 'dbem_recurrence_enabled'
wp option delete 'dbem_reset_timezone_multisite_progress'
wp option delete 'dbem_rsvp_enabled'
wp option delete 'dbem_cp_event_taxonomies'
wp option delete 'dbem_cp_events_slug'
wp option delete 'em_cp_events_cpt'
wp option delete 'em_cp_events_cpts'
wp option delete 'em_ms_event_archetypes'
wp option delete 'em_archetypes_selected'
wp option delete 'em_archetype_default'
wp option delete 'dbem_ms_archetypes_mode'
wp option delete 'dbem_cp_locations_slug'
wp option delete 'em_cp_locations_cpt'
wp option delete 'em_cp_locations_cpts'
wp option delete 'em_pro_version'
wp option delete 'dbem_bookings_currency_thousands_sep'
wp option delete 'dbem_bookings_currency_decimal_point'
wp option delete 'dbem_bookings_currency_format'
wp option delete 'dbem_ms_global_events_links'
wp option delete 'dbem_search_form_views'
wp option delete 'dbem_full_calendar_event_format'
wp option delete 'dbem_display_calendar_orderby'
wp option delete 'dbem_display_calendar_order'
wp option delete 'dbem_locations_enabled'
wp option delete 'dbem_ms_global_location_links'
wp option delete 'dbem_categories_enabled'
wp option delete 'dbem_tags_enabled'
wp option delete 'dbem_rss_orderby'
wp option delete 'dbem_rss_order'
wp option delete 'dbem_ms_archetypes_enabled'
wp option delete 'dbem_timezone_default'
wp option delete 'dbem_default_category'
wp option delete 'dbem_attributes_enabled'
wp option delete 'dbem_location_types'
wp option delete 'dbem_location_attributes_enabled'
wp option delete 'dbem_ms_global_caps'
wp option delete 'dbem_taxonomy_category_slug'
wp option delete 'dbem_taxonomy_tag_slug'
wp option delete 'dbem_events_default_archive_orderby'
wp option delete 'dbem_events_default_archive_order'
wp option delete 'dbem_events_default_orderby'
wp option delete 'dbem_events_default_order'
wp option delete 'dbem_location_event_list_orderby'
wp option delete 'dbem_location_event_list_order'
wp option delete 'dbem_locations_page'
wp option delete 'dbem_locations_default_archive_orderby'
wp option delete 'dbem_locations_default_archive_order'
wp option delete 'dbem_locations_default_orderby'
wp option delete 'dbem_locations_default_order'
wp option delete 'dbem_categories_page'
wp option delete 'dbem_categories_default_archive_orderby'
wp option delete 'dbem_categories_default_archive_order'
wp option delete 'dbem_categories_default_orderby'
wp option delete 'dbem_categories_default_order'
wp option delete 'dbem_category_event_list_orderby'
wp option delete 'dbem_category_event_list_order'
wp option delete 'dbem_tags_page'
wp option delete 'dbem_tags_default_archive_orderby'
wp option delete 'dbem_tags_default_archive_order'
wp option delete 'dbem_tags_default_orderby'
wp option delete 'dbem_tags_default_order'
wp option delete 'dbem_tag_event_list_orderby'
wp option delete 'dbem_tag_event_list_order'
wp option delete 'dbem_my_bookings_page'
wp option delete 'dbem_bookings_default_orderby'
wp option delete 'dbem_bookings_default_order'
wp option delete 'dbem_emfc_full_calendar_event_format'
wp option delete 'dbem_emfc_qtips_format'
wp option delete 'dbem_admin_notices'
wp option delete 'em_event_archetypes_options'
wp option delete 'em_event_archetypes'
wp option delete 'dbem_archetypes_rename_labels'
wp option delete 'dbem_archetypes_rename_cpts'
wp option delete 'dbem_archetypes_rename_slugs'
wp option delete 'dbem_cp_events_label'
wp option delete 'dbem_cp_events_label_single'
wp option delete 'dbem_cp_events_menu_icon'
wp option delete 'dbem_cp_locations_custom_fields'
wp option delete 'dbem_cp_locations_comments'
wp option delete 'dbem_cp_locations_label'
wp option delete 'dbem_cp_locations_label_single'
wp option delete 'dbem_cp_locations_search_results'
wp option delete 'dbem_cp_locations_has_archive'
wp option delete 'dbem_cp_events_custom_fields'
wp option delete 'dbem_cp_events_comments'
wp option delete 'dbem_cp_events_search_results'
wp option delete 'dbem_cp_events_has_archive'
wp option delete 'disable_post_thumbnails'
wp option delete 'dbem_ms_global_events'
wp option delete 'dbem_bookings_tickets_single'
wp option delete 'dbem_ms_events_slug'
wp option delete 'dbem_ms_global_locations_links'
wp option delete 'dbem_ms_locations_slug'
wp option delete 'dbem_ms_global_locations'
wp option delete 'dbem_legacy_bookings_tax_auto_add'
wp option delete 'dbem_debug'
wp option delete 'dbem_edit_locations_page'
wp option delete 'dbem_credits'
wp option delete 'dbem_events_page'
wp option delete 'dbem_version'
wp option delete 'em_ms_global_install'
wp option delete 'dbem_upgrade_throttle'
wp option delete 'dbem_hello_to_user'
wp option delete 'dbem_upgrade_throttle_time'
wp option delete 'dbem_location_default_country'
wp option delete 'dbem_full_calendar_events_limit'
wp option delete 'dbem_bookings_tax_auto_add'
wp option delete 'dbem_time_24h'
wp option delete 'dbem_cp_events_template_page'
wp option delete 'dbem_cp_locations_template_page'
wp option delete 'dbem_event_reapproved_email_subject'
wp option delete 'dbem_event_approved_email_subject'
wp option delete 'dbem_event_reapproved_email_body'
wp option delete 'dbem_event_approved_email_body'
wp option delete 'dbem_cp_events_template'
wp option delete 'dbem_cp_locations_template'
wp option delete 'dbem_events_archive_scope'
wp option delete 'dbem_events_page_scope'
wp option delete 'em_last_modified'
wp option delete 'dbem_category_event_single_format'
wp option delete 'dbem_category_event_list_item_header_format'
wp option delete 'dbem_category_event_list_item_format'
wp option delete 'dbem_category_event_list_item_footer_format'
wp option delete 'dbem_category_no_event_message'
wp option delete 'dbem_category_no_events_message'
wp option delete 'dbem_location_event_single_format'
wp option delete 'dbem_location_event_list_item_header_format'
wp option delete 'dbem_location_event_list_item_format'
wp option delete 'dbem_location_event_list_item_footer_format'
wp option delete 'dbem_location_no_event_message'
wp option delete 'dbem_location_no_events_message'
wp option delete 'dbem_tag_event_single_format'
wp option delete 'dbem_tag_event_list_item_header_format'
wp option delete 'dbem_tag_event_list_item_format'
wp option delete 'dbem_tag_event_list_item_footer_format'
wp option delete 'dbem_tag_no_event_message'
wp option delete 'dbem_tag_no_events_message'
wp option delete 'dbem_dates_separator'
wp option delete 'dbem_dates_Seperator'
wp option delete 'dbem_dates_seperator'
wp option delete 'dbem_times_separator'
wp option delete 'dbem_times_Seperator'
wp option delete 'dbem_times_seperator'
wp option delete 'dbem_legacy_bookings_tax'
wp option delete 'dbem_bookings_tax'
wp option delete 'dbem_rss_limit'
wp option delete 'dbem_css_editors'
wp option delete 'dbem_css_rsvp'
wp option delete 'dbem_css_evlist'
wp option delete 'dbem_css_loclist'
wp option delete 'dbem_css_rsvpadmin'
wp option delete 'dbem_css_catlist'
wp option delete 'dbem_css_taglist'
wp option delete 'dbem_css_search'
wp option delete 'dbem_search_form_hide_advanced'
wp option delete 'dbem_events_page_search_form'
wp option delete 'dbem_events_page_search'
wp option delete 'dbem_search_form_dates_separator'
wp option delete 'dbem_locations_page_search_form'
wp option delete 'dbem_search_form_geo_units'
wp option delete 'dbem_search_form_submit'
wp option delete 'dbem_serach_form_submit'
wp option delete 'dbem_serach_form_submit_ml'
wp option delete 'dbem_search_form_submit_ml'
wp option delete 'dbem_cp_events_excerpt_formats'
wp option delete 'dbem_cp_locations_excerpt_formats'
wp option delete 'dbem_bookings_contact_email_cancelled_subject'
wp option delete 'dbem_contactperson_email_cancelled_subject'
wp option delete 'dbem_bookings_contact_email_cancelled_body'
wp option delete 'dbem_contactperson_email_cancelled_body'
wp option delete 'dbem_bookings_approval'
wp option delete 'dbem_bookings_contact_email_pending_subject'
wp option delete 'dbem_bookings_contact_email_subject'
wp option delete 'dbem_bookings_contact_email_pending_body'
wp option delete 'dbem_bookings_contact_email_body'
wp option delete 'dbem_bookings_contact_email_confirmed_subject'
wp option delete 'dbem_bookings_contact_email_confirmed_body'
wp option delete 'dbem_ical_description_format'
wp option delete 'dbem_ical_location_format'
wp option delete 'dbem_bookings_registration_user'
wp option delete 'dbem_bookings_registration_disable'
wp option delete 'dbem_smtp_host'
wp option delete 'dbem_smtp_encryption'
wp option delete 'dbem_date_format_js'
wp option delete 'dbem_datepicker_format'
wp option delete 'dbem_search_form_tags'
wp option delete 'dbem_conditional_recursions'
wp option delete 'dbem_css_theme_font_weight'
wp option delete 'dbem_css_theme_font_family'
wp option delete 'dbem_css_theme_font_size'
wp option delete 'dbem_css_theme_line_height'
wp option delete 'dbem_dates_range_double_inputs'
wp option delete 'dbem_css'
wp option delete 'dbem_event_list_groupby'
wp option delete 'dbem_search_form_view'
wp option delete 'dbem_search_form_text'
wp option delete 'dbem_search_form_text_label'
wp option delete 'dbem_search_form_geo'
wp option delete 'dbem_search_form_geo_label'
wp option delete 'dbem_search_form_dates'
wp option delete 'dbem_search_form_dates_label'
wp option delete 'dbem_search_form_dates_format'
wp option delete 'dbem_bookings_submit_button_paid'
wp option delete 'dbem_bookings_submit_button'
wp option delete 'dbem_cp_events_name'
wp option delete 'dbem_cp_events_name_single'
wp option delete 'dbem_cp_locations_name'
wp option delete 'dbem_cp_locations_name_single'
wp option delete 'dbem_shortcodes_allow_format_params'
wp option delete 'dbem_shortcodes_decode_params'
wp option delete 'dbem_shortcodes_decode_content'
wp option delete 'dbem_shortcodes_kses_decoded_content'
wp option delete 'dbem_emfc_override_shortcode'
wp option delete 'dbem_emfc_override_calendar'
wp option delete 'dbem_search_form_countries_label'
wp option delete 'dbem_search_form_regions_label'
wp option delete 'dbem_search_form_states_label'
wp option delete 'dbem_search_form_towns_label'
wp option delete 'wpfc_limit'
wp option delete 'dbem_category_default_color'
wp option delete 'wpfc_limit_txt'
wp option delete 'wpfc_limit_color'
wp option delete 'dbem_ms_global_table'
wp option delete 'dbem_wp_debug'
wp option delete 'dbem_edit_bookings_page'
wp option delete 'dbem_booking_charts_frontend'
wp option delete 'dbem_css_calendar'
wp option delete 'dbem_bookings_form_hide_dynamic'
wp option delete 'dbem_css_event'
wp option delete 'dbem_css_location'
wp option delete 'dbem_css_category'
wp option delete 'dbem_css_tag'
wp option delete 'dbem_css_myrsvp'
wp option delete 'dbem_css_theme'
wp option delete 'dbem_advanced_formatting_modes'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'publish_future_post'
wp cron event delete 'em_uploads_api_cleanup'
wp cron event delete 'em_upgrade_plugin_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'em_charts_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'em_charts_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'em_charts_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'em_charts_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_em_locations_exported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_em_locations_exported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_em_locations_exported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_em_locations_exported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_em_bookings_exported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_em_bookings_exported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_em_bookings_exported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_em_bookings_exported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dbem_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dbem_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dbem_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dbem_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_revoked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_revoked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_revoked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_revoked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_em_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_em_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_em_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_em_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_owner_anonymous'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_owner_anonymous'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_owner_anonymous'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_owner_anonymous'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_owner_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_owner_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_owner_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_owner_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_owner_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_owner_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_owner_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_owner_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_start_local'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_start_local'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_start_local'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_start_local'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_end_local'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_end_local'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_end_local'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_end_local'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_start_ts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_start_ts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_start_ts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_start_ts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_end_ts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_end_ts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_end_ts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_end_ts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_approvals_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_approvals_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_approvals_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_approvals_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurrence_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurrence_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurrence_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurrence_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurrence_set_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurrence_set_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurrence_set_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurrence_set_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_owner_anonymous'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_owner_anonymous'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_owner_anonymous'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_owner_anonymous'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_owner_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_owner_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_owner_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_owner_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_owner_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_owner_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_owner_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_owner_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_approvals_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_approvals_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_approvals_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_approvals_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'em_oauth_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'em_oauth_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'em_oauth_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'em_oauth_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'em_bookings_table_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'em_bookings_table_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'em_bookings_table_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'em_bookings_table_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_translation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_translation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_translation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_translation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_translation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_translation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_translation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_translation'"
