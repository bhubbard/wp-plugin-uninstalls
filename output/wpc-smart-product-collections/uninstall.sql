-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcpc_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcpc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcpc_conditions', 'wpcpc_include', 'wpcpc_exclude', 'wpcpc_cronjob', 'wpcpc_logo', 'wpcpc_banner', 'wpcpc_banner_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcpc_conditions', 'wpcpc_include', 'wpcpc_exclude', 'wpcpc_cronjob', 'wpcpc_logo', 'wpcpc_banner', 'wpcpc_banner_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcpc_conditions', 'wpcpc_include', 'wpcpc_exclude', 'wpcpc_cronjob', 'wpcpc_logo', 'wpcpc_banner', 'wpcpc_banner_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcpc_conditions', 'wpcpc_include', 'wpcpc_exclude', 'wpcpc_cronjob', 'wpcpc_logo', 'wpcpc_banner', 'wpcpc_banner_link');

