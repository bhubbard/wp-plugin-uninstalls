-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcpq_gen_stngs', 'wcpq_admin_welcome_options', 'wcpq_email_settings', 'active_sitewide_plugins');

