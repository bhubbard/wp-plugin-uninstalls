-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rw_widgets_options', 'restrict_widgets_activated_blogs');

