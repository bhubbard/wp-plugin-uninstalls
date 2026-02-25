-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wll_settings', 'wll_current_version', 'wll_notice_hide', 'wll_notice_hide_1', 'wll_notice_hide_2', 'when_last_login_add_ons_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('when_last_login', 'when_last_login_count', 'wll_user_ip_address', 'wll_consent_to_track', 'wll_consent_to_track_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('when_last_login', 'when_last_login_count', 'wll_user_ip_address', 'wll_consent_to_track', 'wll_consent_to_track_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('when_last_login', 'when_last_login_count', 'wll_user_ip_address', 'wll_consent_to_track', 'wll_consent_to_track_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('when_last_login', 'when_last_login_count', 'wll_user_ip_address', 'wll_consent_to_track', 'wll_consent_to_track_date');

