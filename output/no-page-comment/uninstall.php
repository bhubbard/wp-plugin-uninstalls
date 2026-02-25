<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sta_npc_has_ecc');
delete_site_option('sta_npc_has_ecc');
delete_option('sta_npc_ecc_notif');
delete_site_option('sta_npc_ecc_notif');
delete_option('sta_npc_version');
delete_site_option('sta_npc_version');
delete_option('sta_npc_admin_options_name');
delete_site_option('sta_npc_admin_options_name');
delete_option('sta_npc_options');
delete_site_option('sta_npc_options');
delete_option('sta_npc_activation');
delete_site_option('sta_npc_activation');

