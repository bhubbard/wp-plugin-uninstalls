<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msm_my_social_media_info');
delete_site_option('msm_my_social_media_info');
delete_option('msm_my_social_media_install');
delete_site_option('msm_my_social_media_install');
delete_option('msm_my_social_media_version');
delete_site_option('msm_my_social_media_version');

