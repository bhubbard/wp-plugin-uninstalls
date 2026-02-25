-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conditional_blocks_developer_mode', 'conditional_blocks_open_from_toolbar', 'conditional_blocks_only_installed_integrations', 'conditional_blocks_general', 'conditional_blocks_ipinfo_api_key');

