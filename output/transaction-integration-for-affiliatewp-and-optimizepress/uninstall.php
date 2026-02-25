<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tiaop_expiration_value');
delete_site_option('tiaop_expiration_value');
delete_option('tiaop_expiration_units');
delete_site_option('tiaop_expiration_units');
delete_option('tiaop_retain_history_value');
delete_site_option('tiaop_retain_history_value');
delete_option('tiaop_retain_history_units');
delete_site_option('tiaop_retain_history_units');

