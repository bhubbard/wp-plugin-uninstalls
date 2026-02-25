#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mc_multisite'
wp option delete 'mc_multisite_show'
wp option delete 'mc_event_link_expires'
wp option delete 'mc_no_fifth_week'
wp option delete 'mc_skip_holidays'
wp option delete 'mcs_custom_hosts'
wp option delete 'mc_import_tribe_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mc_category_icon_category_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mc_category_icon_event_%'"
wp option delete 'mc_version'
wp option delete 'my_calendar_options'
wp option delete 'mc_uninstalled'
wp option delete 'mc_db_version'
wp option delete 'mc_use_custom_js'
wp option delete 'mc_process_shortcodes'
wp option delete 'display_single'
wp option delete 'display_main'
wp option delete 'display_mini'
wp option delete 'mc_display_author'
wp option delete 'mc_display_host'
wp option delete 'mc_show_event_vcal'
wp option delete 'mc_show_gcal'
wp option delete 'mc_show_map'
wp option delete 'mc_gmap'
wp option delete 'mc_show_address'
wp option delete 'mc_short'
wp option delete 'mc_desc'
wp option delete 'mc_image'
wp option delete 'mc_event_registration'
wp option delete 'mc_event_link'
wp option delete 'mc_display_more'
wp option delete 'mc_display_single'
wp option delete 'mc_display_main'
wp option delete 'mc_display_mini'
wp option delete 'mc_drop_settings'
wp option delete 'mc_title'
wp option delete 'mc_inverse_color'
wp option delete 'mcs_submit_id'
wp option delete 'mc_count_cache'
wp option delete 'mcs_date_format'
wp option delete 'mcs_version'
wp option delete 'mcs_license_key'
wp option delete 'mcs_license_key_valid'
wp option delete 'mc_promotion_scheduled'
wp option delete 'wpt_promotion_scheduled'
wp option delete 'ko_calendar_imported'
wp option delete 'mc_tribe_imported'
wp option delete 'mc_event_access_migration_completed'
wp option delete 'mc_location_access_migration_completed'
wp option delete 'mc_import_running'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mc_ctemplate_%'"
wp option delete 'mc_use_permalinks'
wp option delete 'mc_use_styles'
wp option delete 'mc_show_months'
wp option delete 'mc_calendar_javascript'
wp option delete 'mc_list_javascript'
wp option delete 'mc_mini_javascript'
wp option delete 'mc_ajax_javascript'
wp option delete 'mc_show_js'
wp option delete 'mc_notime_text'
wp option delete 'mc_hide_icons'
wp option delete 'mc_apply_color'
wp option delete 'mc_input_options'
wp option delete 'mc_input_options_administrators'
wp option delete 'mc_default_admin_view'
wp option delete 'mc_event_mail'
wp option delete 'mc_event_mail_to'
wp option delete 'mc_event_mail_from'
wp option delete 'mc_event_mail_subject'
wp option delete 'mc_event_mail_message'
wp option delete 'mc_event_mail_bcc'
wp option delete 'mc_html_email'
wp option delete 'mc_week_format'
wp option delete 'mc_date_format'
wp option delete 'mc_templates'
wp option delete 'mc_css_file'
wp option delete 'mc_style_vars'
wp option delete 'mc_show_weekends'
wp option delete 'mc_convert'
wp option delete 'mc_topnav'
wp option delete 'mc_bottomnav'
wp option delete 'mc_default_direction'
wp option delete 'mc_remote'
wp option delete 'mc_gmap_api_key'
wp option delete 'mc_uri'
wp option delete 'mc_uri_id'
wp option delete 'mc_open_uri'
wp option delete 'mc_drop_tables'
wp option delete 'mc_api_enabled'
wp option delete 'mc_default_sort'
wp option delete 'mc_current_table'
wp option delete 'mc_open_day_uri'
wp option delete 'mc_mini_uri'
wp option delete 'mc_show_list_info'
wp option delete 'mc_show_list_events'
wp option delete 'mc_event_title_template'
wp option delete 'mc_heading_text'
wp option delete 'mc_hosted_by'
wp option delete 'mc_posted_by'
wp option delete 'mc_buy_tickets'
wp option delete 'mc_event_accessibility'
wp option delete 'mc_view_full'
wp option delete 'mc_week_caption'
wp option delete 'mc_next_events'
wp option delete 'mc_previous_events'
wp option delete 'mc_today_events'
wp option delete 'mc_caption'
wp option delete 'mc_month_format'
wp option delete 'mc_time_format'
wp option delete 'mc_location_controls'
wp option delete 'mc_cpt_base'
wp option delete 'mc_location_cpt_base'
wp option delete 'mc_default_category'
wp option delete 'mc_skip_holidays_category'
wp option delete 'mc_use_list_template'
wp option delete 'mc_use_mini_template'
wp option delete 'mc_use_details_template'
wp option delete 'mc_use_grid_template'
wp option delete 'mc_default_location'
wp option delete 'mc_no_link'
wp option delete 'mc_site_activated'
wp option delete 'mcs_payments'

# Delete Transients
wp transient delete 'mc_custom_icons'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mc_cat_%' OR option_name LIKE '_site_transient_mc_cat_%'"
wp transient delete 'mc_icon_list'
wp transient delete 'mc_generated_category_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mc_categories_%' OR option_name LIKE '_site_transient_mc_categories_%'"
wp transient delete 'mc_allowed_origins'
wp transient delete 'mc_save_response'
wp transient delete 'mc_last_event'
wp transient delete 'mc_get_date_bounds'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mc_location_%' OR option_name LIKE '_site_transient_mc_location_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mc_first_event_cache_%' OR option_name LIKE '_site_transient_mc_first_event_cache_%'"
wp transient delete 'mc_ts_string'
wp transient delete 'mc_ts_db'
wp transient delete 'mc_db_type'
wp transient delete 'mc_svg_list'
wp transient delete 'mc_styles_updated'
wp transient delete 'mc_file_copy'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'mc_schedule_promotion_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_same_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_same_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_same_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_same_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_occurrence_overlap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_occurrence_overlap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_occurrence_overlap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_occurrence_overlap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_show_on_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_show_on_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_show_on_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_show_on_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_tribe_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_tribe_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_tribe_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_tribe_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueProvince'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueProvince'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueProvince'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueProvince'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenuePhone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenuePhone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenuePhone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenuePhone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tribe_ticket_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tribe_ticket_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tribe_ticket_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tribe_ticket_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_event_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_event_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_event_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_event_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mt_event_expired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mt_event_expired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mt_event_expired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mt_event_expired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mt_registration_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mt_registration_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mt_registration_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mt_registration_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mt_sell_tickets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mt_sell_tickets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mt_sell_tickets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mt_sell_tickets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_user_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_user_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_user_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_user_permissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_event_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_event_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_event_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_event_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_time_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_time_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_time_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_time_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_event_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_event_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_event_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_event_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_event_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_event_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_event_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_event_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_event_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_event_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_event_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_event_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_event_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_event_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_event_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_event_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_custom_instances'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_custom_instances'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_custom_instances'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_custom_instances'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_deleted_instances'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_deleted_instances'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_deleted_instances'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_deleted_instances'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_modified_instances'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_modified_instances'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_modified_instances'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_modified_instances'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcs_submitted_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcs_submitted_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcs_submitted_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcs_submitted_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_submitter_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_submitter_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_submitter_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_submitter_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_default_direction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_default_direction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_default_direction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_default_direction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_default_sort'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_default_sort'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_default_sort'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_default_sort'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_access_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_access_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_access_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_access_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_geolocate_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_geolocate_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_geolocate_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_geolocate_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_remote_image_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_remote_image_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_remote_image_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_remote_image_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_calendar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_calendar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_calendar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_calendar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcs_host_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcs_host_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcs_host_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcs_host_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcs_host_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcs_host_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcs_host_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcs_host_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcs_host_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcs_host_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcs_host_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcs_host_url'"
