<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbox_sgsr_trial_started');
delete_site_option('wpbox_sgsr_trial_started');
delete_option('wpbox_sgsr_license_type');
delete_site_option('wpbox_sgsr_license_type');
delete_option('wpbox_sgsr_trial_status');
delete_site_option('wpbox_sgsr_trial_status');

