<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ebec-install-date');
delete_site_option('ebec-install-date');
delete_option('ebec_initial_save_version');
delete_site_option('ebec_initial_save_version');
delete_option('ebec-alreadyRated');
delete_site_option('ebec-alreadyRated');
delete_option('ebec_activation_time');
delete_site_option('ebec_activation_time');
delete_option('ebec_spare_me');
delete_site_option('ebec_spare_me');
delete_option('ebec-v');
delete_site_option('ebec-v');
delete_option('cpfm_opt_in_choice_cool_events');
delete_site_option('cpfm_opt_in_choice_cool_events');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('ebec_extra_data_update');

