-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('booking_version_num', 'booking_simulate_login_as_user', 'booking_date_format', 'booking_time_format', 'booking_feedback_03', 'booking_feedback_03_rating', 'booking_is_use_captcha', '_booking_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname', '_wp_page_template');

