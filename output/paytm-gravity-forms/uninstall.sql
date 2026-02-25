-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_paytm_form_version', 'gf_paytm_form_settings', 'gf_paytm_form_site_name', 'gf_paytm_form_auth_token', 'recently_activated');

