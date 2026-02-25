-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('futy_widget_code', 'futy_widget_visibility', 'futy_new_script');

