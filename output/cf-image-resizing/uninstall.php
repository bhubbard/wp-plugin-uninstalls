<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf_image_resizing_siteurl');
delete_site_option('cf_image_resizing_siteurl');
delete_option('cf_image_resizing_sitefolder');
delete_site_option('cf_image_resizing_sitefolder');
delete_option('cf_image_resizing_homedir');
delete_site_option('cf_image_resizing_homedir');
delete_option('cf_image_resizing_hook_1');
delete_site_option('cf_image_resizing_hook_1');
delete_option('cf_image_resizing_hook_2');
delete_site_option('cf_image_resizing_hook_2');
delete_option('cf_image_resizing_hook_3');
delete_site_option('cf_image_resizing_hook_3');
delete_option('cf_image_resizing_hook_4');
delete_site_option('cf_image_resizing_hook_4');
delete_option('cf_image_resizing_hook_5');
delete_site_option('cf_image_resizing_hook_5');
delete_option('cf_image_resizing_hook_6');
delete_site_option('cf_image_resizing_hook_6');
delete_option('cf_image_resizing_fit');
delete_site_option('cf_image_resizing_fit');
delete_option('cf_image_resizing_quality');
delete_site_option('cf_image_resizing_quality');
delete_option('cf_image_resizing_format');
delete_site_option('cf_image_resizing_format');
delete_option('cf_image_resizing_metadata');
delete_site_option('cf_image_resizing_metadata');
delete_option('cf_image_resizing_onerror');
delete_site_option('cf_image_resizing_onerror');
delete_option('cf_image_resizing_strip_img_sizes');
delete_site_option('cf_image_resizing_strip_img_sizes');
delete_option('cf_image_resizing_add_img_sizes');
delete_site_option('cf_image_resizing_add_img_sizes');
delete_option('cf_image_resizing_fix_vc_composer');
delete_site_option('cf_image_resizing_fix_vc_composer');
delete_option('cf_image_resizing_whitelist');
delete_site_option('cf_image_resizing_whitelist');
delete_option('cf_image_resizing_whitelist_urls');
delete_site_option('cf_image_resizing_whitelist_urls');
delete_option('cf_image_resizing_admin_notice_dismissed');
delete_site_option('cf_image_resizing_admin_notice_dismissed');

