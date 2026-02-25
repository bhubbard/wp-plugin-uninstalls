-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xpwp_sdk_active', 'xpwp_client_id', 'xpwp_version', 'axeptio_versions', 'axeptio/sdk_proxy_key', 'axeptio/need_flush', 'axeptio_plugin_activated', 'axeptio_settings', 'axeptio/version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('axeptio_disable_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('axeptio_disable_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('axeptio_disable_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('axeptio_disable_notice');

