-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Spider_Zoom_tag', 'Spider_Zoom_class', 'Spider_Zoom_id', 'Spider_Zoom_max', 'Spider_Zoom_min', 'Spider_Zoom_imggroup', 'Spider_Zoom_imgsize', 'Spider_Zoom_title');

