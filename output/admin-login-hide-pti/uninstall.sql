-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adlhpti_enabled', 'adlhpti_custom_login_slug');

