<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('falke_mdm_versionhint');
delete_site_option('falke_mdm_versionhint');
delete_option('falke_mdm_upgrade_notice');
delete_site_option('falke_mdm_upgrade_notice');
delete_option('multidomainplugin_tabsettings');
delete_site_option('multidomainplugin_tabsettings');
delete_option('multidomainplugin_options');
delete_site_option('multidomainplugin_options');
delete_option('falke_mdm_settings');
delete_site_option('falke_mdm_settings');
delete_option('falke_mdm_mappings');
delete_site_option('falke_mdm_mappings');
delete_option('falke_mdm_notice');
delete_site_option('falke_mdm_notice');

