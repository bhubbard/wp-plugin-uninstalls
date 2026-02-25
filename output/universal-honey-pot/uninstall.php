<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('universal_honey_pot_use_user_behaviour');
delete_site_option('universal_honey_pot_use_user_behaviour');
delete_option('universal_honey_pot_counter');
delete_site_option('universal_honey_pot_counter');

