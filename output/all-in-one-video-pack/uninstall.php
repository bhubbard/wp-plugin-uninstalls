<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kaltura_partner_id');
delete_site_option('kaltura_partner_id');
delete_option('kaltura_secret');
delete_site_option('kaltura_secret');
delete_option('kaltura_admin_secret');
delete_site_option('kaltura_admin_secret');
delete_option('kaltura_cms_user');
delete_site_option('kaltura_cms_user');
delete_option('kaltura_subp_id');
delete_site_option('kaltura_subp_id');
delete_option('kaltura_default_player_type');
delete_site_option('kaltura_default_player_type');
delete_option('kaltura_show_media_from');
delete_site_option('kaltura_show_media_from');
delete_option('kaltura_default_kcw_type');
delete_site_option('kaltura_default_kcw_type');
delete_option('kaltura_user_identifier');
delete_site_option('kaltura_user_identifier');
delete_option('kaltura_root_category');
delete_site_option('kaltura_root_category');
delete_option('kaltura_enable_kcw');
delete_site_option('kaltura_enable_kcw');
delete_option('kaltura_allowed_players');
delete_site_option('kaltura_allowed_players');

