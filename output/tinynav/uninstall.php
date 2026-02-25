<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tn_menu_marginleft');
delete_site_option('tn_menu_marginleft');
delete_option('tn_menu_marginright');
delete_site_option('tn_menu_marginright');
delete_option('tn_menu_margintop');
delete_site_option('tn_menu_margintop');
delete_option('tn_menu_marginbottom');
delete_site_option('tn_menu_marginbottom');
delete_option('tn_menu_customclass');
delete_site_option('tn_menu_customclass');
delete_option('tn_menu_customwidth');
delete_site_option('tn_menu_customwidth');
delete_option('tn_menu_customwidth2');
delete_site_option('tn_menu_customwidth2');
delete_option('tn_tinynav_viewport');
delete_site_option('tn_tinynav_viewport');
delete_option('tn_tinynav_footer');
delete_site_option('tn_tinynav_footer');

