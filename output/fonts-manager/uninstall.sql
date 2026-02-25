-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('winofm_settings', 'winofm_saved_glinks', 'winofm_session_glinks', 'winofm_extra_glinks', 'winofm_hosted_glinks');

