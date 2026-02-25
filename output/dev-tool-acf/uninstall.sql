-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_visibility_option', 'acf_allowed_emails', 'acf_allowed_roles', 'devtoolacf_visibility_option', 'devtoolacf_allowed_emails', 'devtoolacf_allowed_roles');

