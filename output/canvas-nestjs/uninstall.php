<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cn_setting_ishome');
delete_site_option('cn_setting_ishome');
delete_option('cn_setting_isarchive');
delete_site_option('cn_setting_isarchive');
delete_option('cn_setting_issingular');
delete_site_option('cn_setting_issingular');
delete_option('cn_setting_issearch');
delete_site_option('cn_setting_issearch');
delete_option('cn_setting_is404');
delete_site_option('cn_setting_is404');
delete_option('cn_setting_color');
delete_site_option('cn_setting_color');
delete_option('cn_setting_opacity');
delete_site_option('cn_setting_opacity');
delete_option('cn_setting_count');
delete_site_option('cn_setting_count');
delete_option('cn_setting_zindex');
delete_site_option('cn_setting_zindex');

