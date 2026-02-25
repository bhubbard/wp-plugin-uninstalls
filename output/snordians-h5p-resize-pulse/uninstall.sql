-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('h5presizepulse_version', 'h5presizepulse_defaults_set', 'h5presizepulse_option');

