-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_gmap_is_active', 'dbem_search_form_geo', 'dbem_events_anonymous_submissions', 'dbem_events_anonymous_user', 'dbem_ms_mainblog_locations', 'dbem_map_default_width', 'dbem_map_default_height', 'dbem_location_baloon_format', 'dbem_map_text_format', 'dbem_use_select_for_locations', 'dbem_require_location', 'dbem_events_form_result_success', 'dbem_events_form_result_success_updated', 'dbem_events_anonymous_result_success', 'dbem_bookings_anonymous', 'dbem_bookings_double', 'dbem_booking_feedback_already_booked', 'dbem_bookings_user_cancellation', 'dbem_booking_feedback_cancelled', 'dbem_booking_feedback_log_in', 'dbem_search_form_states_label', 'dbem_search_form_towns_label', 'dbem_search_form_regions_label', 'dbem_events_page_scope', 'dbem_events_default_limit', 'dbem_locations_default_limit', 'dbem_tags_default_limit', 'dbem_categories_default_limit', 'dbem_bookings_currency', 'dbem_data_privacy_consent_text', 'stonehenge_forums', 'em_email_users', 'dbem_mail_sender_name', 'dbem_mail_sender_address', 'dbem_rsvp_mail_send_method', 'dbem_smtp_host', 'dbem_rsvp_mail_port', 'dbem_smtp_username', 'dbem_smtp_password', 'dbem_smtp_encryption', 'dbem_rsvp_mail_SMTPAuth', 'dbem_smtp_autotls', 'stonehenge_creations_plugins_feed');
DELETE FROM wp_options WHERE option_name LIKE '%_license';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_location_map_type', '_location_marker_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_location_map_type', '_location_marker_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_location_map_type', '_location_marker_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_location_map_type', '_location_marker_color');

