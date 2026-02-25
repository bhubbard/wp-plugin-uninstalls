-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfptwc_custom_fields', 'themeqx_cfptwc_option', 'themeqx_cfptwc_version');

