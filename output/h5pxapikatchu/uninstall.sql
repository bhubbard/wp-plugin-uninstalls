-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('h5pxapikatchu_version', 'h5pxapikatchu_defaults_set', 'h5pxapikatchu_option');

