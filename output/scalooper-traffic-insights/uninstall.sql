-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scalooper_ti_site_option', 'scalooper_ti_option');

