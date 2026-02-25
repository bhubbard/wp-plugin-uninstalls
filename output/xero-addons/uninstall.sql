-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xeroaddons_widgets', 'elementor_viewport_lg', 'elementor_viewport_md');

