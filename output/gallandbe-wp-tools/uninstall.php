<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('galland_spamfight');
delete_site_option('galland_spamfight');
delete_option('galland_spamfightcounter');
delete_site_option('galland_spamfightcounter');

