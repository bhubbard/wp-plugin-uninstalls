-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'BootstrapBlocks_settings', 'BootstrapBlocks_experiments', 'Bootstrap_config_options', 'Bootstrap_config_breakpoints', 'Bootstrap_config_container', 'Bootstrap_config_gutter', 'Bootstrap_config_scss_overrides', 'Bootstrap_config_imports', 'BootstrapBlocksActivated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bootstrap_notice_dismissed', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('bootstrap_notice_dismissed', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('bootstrap_notice_dismissed', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bootstrap_notice_dismissed', '_wp_page_template');

