<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('world_prayer_chosen_nations');
delete_site_option('world_prayer_chosen_nations');

