-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secsignid_service_name', 'secsignid_frame', 'secsignid_show_on_login_page', 'secsign_id_cookie_secret', 'secsignid_allow_account_creation', 'secsignid_allow_account_assignment');

