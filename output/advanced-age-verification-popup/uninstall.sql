-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avp_cookie_duration', 'avp_redirect_url', 'avp_logo', 'avp_title', 'avp_enter_text', 'avp_exit_text', 'avp_verification_method');

