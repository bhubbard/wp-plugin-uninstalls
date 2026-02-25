-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('welcome_user_email', 'cuwp_welcome_user_email');

