-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppopups_license_updates', 'wppopups_license', 'wppopups_review', 'wppopups_activated', 'wppopups_settings', 'wppopups_upgraded_from_1x', 'spu_integrations', 'active_sitewide_plugins', 'wppopups_upgrade_fields', 'wppopups_activation_redirect', 'wppopups_version_upgraded_from', 'wppopups_providers', 'wppopups_version', 'wppopups_preview_page', 'wppopups_debug', 'wppopups_logging', '_wppopups_addons', 'update_plugins', 'wppopups_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'spu_options', 'spu_rules', 'spu_ab_group');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'spu_options', 'spu_rules', 'spu_ab_group');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'spu_options', 'spu_rules', 'spu_ab_group');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'spu_options', 'spu_rules', 'spu_ab_group');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wppopups_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wppopups_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wppopups_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wppopups_log_%';

