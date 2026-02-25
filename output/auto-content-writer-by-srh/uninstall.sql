-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acwbsrh_api_key', 'acwbsrh_settings', 'acwbsrh_blog_history');

