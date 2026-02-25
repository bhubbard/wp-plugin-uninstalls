<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('jssupportticket');
delete_site_option('jssupportticket');
delete_option('jssupportticket-pageid');
delete_site_option('jssupportticket-pageid');
delete_option('jssupportticket_do_activation_redirect');
delete_site_option('jssupportticket_do_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('jssupporticket_updateticketstatus');

