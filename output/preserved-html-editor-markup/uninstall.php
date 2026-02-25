<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emc2_editor_insert_p');
delete_site_option('emc2_editor_insert_p');
delete_option('emc2pm_activate_date');
delete_site_option('emc2pm_activate_date');

