-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pre_loading_config', 'pre_loading_options', 'pre_loading_options_preview');

