-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fl_version', 'fl_activation_date', 'force-user-login-options');

