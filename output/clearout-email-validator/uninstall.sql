-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clearout_email_validator', 'CLEAROUT_PLUGIN_VERSION');

