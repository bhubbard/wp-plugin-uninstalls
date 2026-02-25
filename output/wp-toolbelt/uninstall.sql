-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('toolbelt_options', 'toolbelt_settings', 'disallowed_keys');

