-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsml_screenshot_api_key', 'wsml_screenshot_viewport_width', 'wsml_screenshot_viewport_height', 'wsml_screenshot_image_format');

