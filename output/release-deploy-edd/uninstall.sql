-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_settings', 'woocommerce_shop_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_sl_enabled', '_edd_sl_version', '_edd_release_deploy_version', '_edd_release_deploy_last_sync', '_edd_release_deploy_changelog_last_sync', '_edd_release_deploy_changelog_linked');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_sl_enabled', '_edd_sl_version', '_edd_release_deploy_version', '_edd_release_deploy_last_sync', '_edd_release_deploy_changelog_last_sync', '_edd_release_deploy_changelog_linked');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_sl_enabled', '_edd_sl_version', '_edd_release_deploy_version', '_edd_release_deploy_last_sync', '_edd_release_deploy_changelog_last_sync', '_edd_release_deploy_changelog_linked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_sl_enabled', '_edd_sl_version', '_edd_release_deploy_version', '_edd_release_deploy_last_sync', '_edd_release_deploy_changelog_last_sync', '_edd_release_deploy_changelog_linked');

