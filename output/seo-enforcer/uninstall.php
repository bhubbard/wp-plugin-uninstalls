<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seoe_settings_version');
delete_site_option('seoe_settings_version');
delete_option('seoe_post_notices');
delete_site_option('seoe_post_notices');
delete_option('seoe_title');
delete_site_option('seoe_title');
delete_option('seoe_title_length');
delete_site_option('seoe_title_length');
delete_option('seoe_title_trunc_type');
delete_site_option('seoe_title_trunc_type');
delete_option('seoe_title_trunc_ex');
delete_site_option('seoe_title_trunc_ex');
delete_option('seoe_desc');
delete_site_option('seoe_desc');
delete_option('seoe_desc_trunc_type');
delete_site_option('seoe_desc_trunc_type');
delete_option('seoe_desc_trunc_ex');
delete_site_option('seoe_desc_trunc_ex');
delete_option('seoe_h1');
delete_site_option('seoe_h1');
delete_option('seoe_h1_ex');
delete_site_option('seoe_h1_ex');
delete_option('seoe_settings');
delete_site_option('seoe_settings');

