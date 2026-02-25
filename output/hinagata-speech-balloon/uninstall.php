<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hinagata_sb_presets');
delete_site_option('hinagata_sb_presets');
delete_option('hinagata_sb_settings');
delete_site_option('hinagata_sb_settings');
delete_option('hinagata_sb_template');
delete_site_option('hinagata_sb_template');

