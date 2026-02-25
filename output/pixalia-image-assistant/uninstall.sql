-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixalia_default_style', 'pixalia_default_aspect_ratio', 'pixalia_api_key', 'pixalia_post_types', 'pixalia_last_check_version');

