<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp-pages');
delete_site_option('bp-pages');
delete_option('create_map');
delete_site_option('create_map');
delete_option('sitemap_update');
delete_site_option('sitemap_update');
delete_option('members');
delete_site_option('members');
delete_option('groups');
delete_site_option('groups');
delete_option('searches');
delete_site_option('searches');
delete_option('bpp_group_list');
delete_site_option('bpp_group_list');
delete_option('bpp_group_profile');
delete_site_option('bpp_group_profile');
delete_option('bpp_member_list');
delete_site_option('bpp_member_list');
delete_option('bpp_member_profile');
delete_site_option('bpp_member_profile');
delete_option('bpp_member_profile_tabs');
delete_site_option('bpp_member_profile_tabs');
delete_option('bpp_custom_fields');
delete_site_option('bpp_custom_fields');
delete_option('create_schema');
delete_site_option('create_schema');
delete_option('schema_fields');
delete_site_option('schema_fields');

