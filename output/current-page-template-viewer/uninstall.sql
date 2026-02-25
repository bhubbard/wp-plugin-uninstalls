-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('currpate_current_page_template_viewer_options', 'current_page_template_viewer_options');

