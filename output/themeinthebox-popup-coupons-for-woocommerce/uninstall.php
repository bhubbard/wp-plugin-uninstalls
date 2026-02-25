<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('popucoge_settings');
delete_site_option('popucoge_settings');
delete_option('popucoge_automations');
delete_site_option('popucoge_automations');
delete_option('popucoge_popups');
delete_site_option('popucoge_popups');

