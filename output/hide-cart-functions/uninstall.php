<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hwcf_version_1_0_0_installed');
delete_site_option('hwcf_version_1_0_0_installed');
delete_option('hwcf_notice_dismiss');
delete_site_option('hwcf_notice_dismiss');
delete_option('hwcf_migrated_1_2_16');
delete_site_option('hwcf_migrated_1_2_16');
delete_option('hwcf_settings_data');
delete_site_option('hwcf_settings_data');
delete_option('hwcf_disable_purchases');
delete_site_option('hwcf_disable_purchases');
delete_option('hwcf_delete_on_deactivation');
delete_site_option('hwcf_delete_on_deactivation');
delete_option('hwcf_cripple_bots');
delete_site_option('hwcf_cripple_bots');
delete_option('hwcf_settings_ids_increament');
delete_site_option('hwcf_settings_ids_increament');

