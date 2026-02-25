<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kk_uc_core_default_disable');
delete_site_option('kk_uc_core_default_disable');
delete_option('kk_uc_plugins_default_disable');
delete_site_option('kk_uc_plugins_default_disable');
delete_option('kk_uc_themes_default_disable');
delete_site_option('kk_uc_themes_default_disable');
delete_option('kk_uc_translations_default_disable');
delete_site_option('kk_uc_translations_default_disable');

