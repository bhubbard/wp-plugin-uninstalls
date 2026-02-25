-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yotm_disabled_sizes', 'yo_disabled_sizes');

