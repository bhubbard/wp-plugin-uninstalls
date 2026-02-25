-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shift8_cdn_url', 'shift8_cdn_api', 'shift8_cdn_prefix', 'shift8_cdn_minify_html', 'shift8_cdn_minify_html_skip_logged_in', 'shift8_cdn_minify_html_preserve_comments', 'shift8_cdn_minify_css', 'shift8_cdn_minify_js', 'shift8_cdn_enabled', 'shift8_cdn_css', 'shift8_cdn_js', 'shift8_cdn_media', 'shift8_cdn_reject_files', 'shift8_cdn_email', 'shift8_cdn_minify_map');

