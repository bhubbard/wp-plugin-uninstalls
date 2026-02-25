-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmw_disable_classic_widgets_alert', 'sidebars_widgets', 'gmw_pointers');

