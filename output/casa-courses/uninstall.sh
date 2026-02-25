#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'casa_courses_plugin_activation'
wp option delete 'casa_courses_token_error'
wp option delete 'casa_courses_token'
wp option delete 'casa_courses_project_id'
wp option delete 'casa_courses_domain'
wp option delete 'casa_courses_courses_slug'
wp option delete 'casa_courses_industry_json'
wp option delete 'casa_courses_dietary_preferences_json'
wp option delete 'casa_courses_show_price'
wp option delete 'casa_course_disable_caching'
wp option delete 'casa_courses_primary'
wp option delete 'casa_courses_secondary'
wp option delete 'casa_courses_text_font'
wp option delete 'casa_courses_area_box_bg_color'
wp option delete 'casa_courses_area_list_color'
wp option delete 'casa_courses_area_box_color'
wp option delete 'casa_courses_area_box_font_size'
wp option delete 'casa_courses_area_box_number_desktop'
wp option delete 'casa_courses_price_text_position'
wp option delete 'casa_courses_detail_price_head_color'
wp option delete 'casa_courses_detail_price_head_bg_color'
wp option delete 'casa_courses_detail_price_head_border_color'
wp option delete 'casa_courses_detail_event_color'
wp option delete 'casa_courses_detail_event_bg_color'
wp option delete 'casa_courses_detail_event_btn_color'
wp option delete 'casa_courses_detail_event_btn_bg_color'
wp option delete 'casa_courses_few_seats_remaining_color'
wp option delete 'casa_courses_fully_booked_color'
wp option delete 'casa_courses_booking_btn_color'
wp option delete 'casa_courses_booking_btn_bg_color'
wp option delete 'casa_courses_company_required'
wp option delete 'casa_courses_company_visible'
wp option delete 'casa_courses_company_id_required'
wp option delete 'casa_courses_company_id_visible'
wp option delete 'casa_courses_industry_required'
wp option delete 'casa_courses_industry_visible'
wp option delete 'casa_courses_dietary_preferences_required'
wp option delete 'casa_courses_dietary_preferences_visible'
wp option delete 'casa_courses_limited_available'
wp option delete 'casa_courses_scheduled_text_default'
wp option delete 'casa_courses_seats_remaining'
wp option delete 'casa_courses_seats_full'
wp option delete 'casa_courses_title_separator'
wp option delete 'casa_courses_available_notify'
wp option delete 'casa_courses_show_filter_home'
wp option delete 'casa_courses_delay_days'
wp option delete 'casa_courses_terms_label'
wp option delete 'casa_courses_privacy_label'
wp option delete 'casa_courses_privacy_message'
wp option delete 'casa_courses_terms_message'
wp option delete 'casa_courses_area_section_title'
wp option delete 'casa_courses_header_template'
wp option delete 'casa_courses_footer_template'
wp option delete 'casa_courses_calendar_desc'
wp option delete 'casa_courses_calendar_months'
wp option delete 'casa_courses_calendar_title'
wp option delete 'casa_courses_calendar_slug'
wp option delete 'casa_courses_show_filter_calendar'
wp option delete 'casa_courses_registration_title'
wp option delete 'casa_courses_registration_slug'
wp option delete 'casa_courses_registration_desc'
wp option delete 'casa_courses_submit_desc'
wp option delete 'casa_courses_list_all_section_desc'
wp option delete 'casa_courses_industry_loaded'
wp option delete 'casa_courses_dietary_preferences_loaded'
wp option delete 'casa_courses_areas_loaded'
wp option delete 'casa_courses_courses_loaded'
wp option delete 'casa_courses_events_loaded'
wp option delete 'casa_courses_google_recaptcha'
wp option delete 'casa_courses_error_desc'
wp option delete 'casa_courses_list_all_image'
wp option delete 'casa_courses_few_seats_left_color'
wp option delete 'casa_courses_courses_calendar_slug'

# Clear Cron Jobs
wp cron event delete 'casa_cron_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_available_seats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_available_seats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_available_seats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_available_seats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_metadata_invoice_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_metadata_invoice_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_metadata_invoice_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_metadata_invoice_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_metadata_number_of_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_metadata_number_of_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_metadata_number_of_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_metadata_number_of_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_metadata_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_metadata_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_metadata_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_metadata_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_metadata_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_metadata_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_metadata_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_metadata_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_metadata_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_metadata_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_metadata_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_metadata_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_metadata_project_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_metadata_project_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_metadata_project_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_metadata_project_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_metadata_project_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_metadata_project_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_metadata_project_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_metadata_project_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_metadata_extra_costs_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_metadata_extra_costs_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_metadata_extra_costs_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_metadata_extra_costs_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_metadata_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_metadata_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_metadata_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_metadata_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'casa_courses_metadata_template_areas_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'casa_courses_metadata_template_areas_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'casa_courses_metadata_template_areas_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'casa_courses_metadata_template_areas_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_invoice_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_invoice_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_invoice_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_invoice_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_max_participant_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_max_participant_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_max_participant_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_max_participant_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_venue_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_venue_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_venue_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_venue_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_venue_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_venue_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_venue_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_venue_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_event_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_event_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_event_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_event_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_next_available_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_next_available_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_next_available_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_next_available_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_available_date_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_available_date_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_available_date_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_available_date_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_events_metadata_sessions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_events_metadata_sessions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_events_metadata_sessions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_events_metadata_sessions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casa_courses_areas_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casa_courses_areas_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casa_courses_areas_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casa_courses_areas_image'"
