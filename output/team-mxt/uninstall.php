<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('team_mxt_all_members');
delete_site_option('team_mxt_all_members');
delete_option('team_mxt_member_data');
delete_site_option('team_mxt_member_data');
delete_option('team_mxt_member_photo');
delete_site_option('team_mxt_member_photo');
delete_option('team_mxt_cards_in_row_pc');
delete_site_option('team_mxt_cards_in_row_pc');
delete_option('team_mxt_cards_in_row_tablet');
delete_site_option('team_mxt_cards_in_row_tablet');
delete_option('team_mxt_use_filtering');
delete_site_option('team_mxt_use_filtering');
delete_option('team_mxt_use_carousel');
delete_site_option('team_mxt_use_carousel');
delete_option('team_mxt_version');
delete_site_option('team_mxt_version');
delete_option('team_mxt_settings');
delete_site_option('team_mxt_settings');

// Delete Transients
delete_transient('team_mxt_add_member_success');
delete_site_transient('team_mxt_add_member_success');

