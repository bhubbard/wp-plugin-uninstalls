<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s247RumKeyDB');
delete_site_option('s247RumKeyDB');
delete_option('s247Datacentre');
delete_site_option('s247Datacentre');
delete_option('s247ReplayToggle');
delete_site_option('s247ReplayToggle');
delete_option('maskInputText');
delete_site_option('maskInputText');
delete_option('maskAllText');
delete_site_option('maskAllText');

