<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_jovvie_in_person_payments_givewp_last_version');
delete_site_option('_jovvie_in_person_payments_givewp_last_version');

