-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('photoshow_google_active', 'photoshow_google_cx', 'photoshow_google_api_key', 'photoshow_flickr_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

