-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('melibo_api_key', 'melibo_environment_id', 'melibo_environment_select_pages', 'melibo_activate', 'melibo_excluded_pages');

