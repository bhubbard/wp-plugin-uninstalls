<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mc6397ppu_duration_hours');
delete_site_option('mc6397ppu_duration_hours');
delete_option('mc6397ppu_duration_minutes');
delete_site_option('mc6397ppu_duration_minutes');
delete_option('mc6397ppu_duration_seconds');
delete_site_option('mc6397ppu_duration_seconds');

