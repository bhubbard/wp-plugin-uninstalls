-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('falke_mdm_versionhint', 'falke_mdm_upgrade_notice', 'multidomainplugin_tabsettings', 'multidomainplugin_options', 'falke_mdm_settings', 'falke_mdm_mappings', 'falke_mdm_notice');

