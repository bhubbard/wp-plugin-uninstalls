<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_emercury_settings');
delete_site_option('gf_emercury_settings');
delete_option('gf_emercury_version');
delete_site_option('gf_emercury_version');

