-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slide_in_popup', 'sidebars_widgets', 'widget_slideins');

