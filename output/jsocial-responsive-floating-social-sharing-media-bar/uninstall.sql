-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jsocial_options', 'jsocial_styles', 'jsocial_attr', 'jsocial_display');

