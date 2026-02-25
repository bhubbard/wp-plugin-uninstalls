-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_PK_404', '_PK_Active_Redirect', 'WriteCSS', '_PK_css_value', '_PK_css_options', 'WriteJS', '_PK_js_value', '_PK_js_options', 'WritePNG', '_PK_png_value', '_PK_png_options', 'WriteJPG', '_PK_jpg_value', '_PK_jpg_options', '_PK_301_new_setting', '_PK_301_old_setting', '_PK_302_old_setting', '_PK_302_new_setting', '_PK_404_setting', '_PK_500_setting', '_PK_redirect_old_urls', '_PK_redirect_new_urls', 'Write301', 'Write302', 'Write404', 'Write500', 'ForceHttps', '_PK_created_default', '_PK_400_setting');

