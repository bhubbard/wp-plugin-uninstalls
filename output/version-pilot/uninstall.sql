-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_version_pilot_is_active', '_version_pilot_plugin_slug', '_version_pilot_plugin_requires_wp', '_version_pilot_plugin_requires_php', '_version_pilot_version_number', '_version_pilot_plugin_homepage_url', '_version_pilot_plugin_banner_low', '_version_pilot_plugin_banner_high', '_version_pilot_package_url', '_version_pilot_version_minimum');
DELETE FROM wp_usermeta WHERE meta_key IN ('_version_pilot_is_active', '_version_pilot_plugin_slug', '_version_pilot_plugin_requires_wp', '_version_pilot_plugin_requires_php', '_version_pilot_version_number', '_version_pilot_plugin_homepage_url', '_version_pilot_plugin_banner_low', '_version_pilot_plugin_banner_high', '_version_pilot_package_url', '_version_pilot_version_minimum');
DELETE FROM wp_termmeta WHERE meta_key IN ('_version_pilot_is_active', '_version_pilot_plugin_slug', '_version_pilot_plugin_requires_wp', '_version_pilot_plugin_requires_php', '_version_pilot_version_number', '_version_pilot_plugin_homepage_url', '_version_pilot_plugin_banner_low', '_version_pilot_plugin_banner_high', '_version_pilot_package_url', '_version_pilot_version_minimum');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_version_pilot_is_active', '_version_pilot_plugin_slug', '_version_pilot_plugin_requires_wp', '_version_pilot_plugin_requires_php', '_version_pilot_version_number', '_version_pilot_plugin_homepage_url', '_version_pilot_plugin_banner_low', '_version_pilot_plugin_banner_high', '_version_pilot_package_url', '_version_pilot_version_minimum');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

