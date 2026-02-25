<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unlitogd_banner_text');
delete_site_option('unlitogd_banner_text');
delete_option('unlitogd_primary_color');
delete_site_option('unlitogd_primary_color');
delete_option('unlitogd_secondary_color');
delete_site_option('unlitogd_secondary_color');
delete_option('unlitogd_policy_link');
delete_site_option('unlitogd_policy_link');
delete_option('unlitogd_scripts_analytics');
delete_site_option('unlitogd_scripts_analytics');
delete_option('unlitogd_scripts_marketing');
delete_site_option('unlitogd_scripts_marketing');
delete_option('unlitogd_text_color');
delete_site_option('unlitogd_text_color');
delete_option('unlitogd_policy_version');
delete_site_option('unlitogd_policy_version');
delete_option('unlitogd_revocation_button');
delete_site_option('unlitogd_revocation_button');
delete_option('unlitogd_banner_bg_color');
delete_site_option('unlitogd_banner_bg_color');
delete_option('unlitogd_secondary_btn_color');
delete_site_option('unlitogd_secondary_btn_color');
delete_option('unlitogd_save_btn_color');
delete_site_option('unlitogd_save_btn_color');
delete_option('unlitogd_overlay_color');
delete_site_option('unlitogd_overlay_color');

