-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lsi_extra_fields', 'lsi_login_heading_text', 'lsi_signup_heading_text', 'lsi_login_redirect_link', 'lsi_signup_link', 'lsi_signup_redirect_link', 'lsi_login_link', 'lsi_terms_condition_link', 'lsi_signup_role', 'lsi_generate_username', 'lsi_generate_password', 'lsi_send_user_thankyou');

