-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcorgtoc_active', 'jcorgtoc_duration', 'jcorgtoc_title', 'jcorgtoc_easingType', 'jcorgtoc_textlength', 'jcorgtoc_height', 'jcorgtoc_scroll', 'jcorgtoc_scroll_element', 'jcorgtoc_position', 'jcorgtoc_minimize', 'jcorgtoc_linkback', 'jcorgtoc_parenttagclass');

