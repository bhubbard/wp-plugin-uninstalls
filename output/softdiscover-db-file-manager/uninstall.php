<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbflm_fmanager_roles');
delete_site_option('dbflm_fmanager_roles');
delete_option('flmbkpbuild_version');
delete_site_option('flmbkpbuild_version');
delete_option('flmbkp_opt_theme');
delete_site_option('flmbkp_opt_theme');
delete_option('flmbkp_opt_lang');
delete_site_option('flmbkp_opt_lang');

