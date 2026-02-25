-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgpm_popup_maker_api_option', 'sgpm_popup_maker_dismiss_review_notice', 'sgpm_popup_maker_activation_date', 'sgpm_popup_maker_notification_engine_source', 'sgpm_popup_maker_dismissed_notifacions', 'sgpm_popup_maker_user_roles', 'sgpm_popup_maker_custom_allowed_tags', 'sgpm_popup_maker_custom_allowed_attrs', 'wisdom_last_track_time', 'wisdom_collect_email', 'wisdom_admin_emails');
DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%';

