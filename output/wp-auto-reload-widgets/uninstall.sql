-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ab_auto_load', 'WP_EX_FONTS_LIST');

