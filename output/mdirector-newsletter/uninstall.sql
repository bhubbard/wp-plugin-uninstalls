-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdirector_active', 'mdirector-notice', 'mdirector_settings');

