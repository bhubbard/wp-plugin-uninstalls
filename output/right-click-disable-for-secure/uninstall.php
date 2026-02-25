<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rcdforsalertnoyes');
delete_site_option('rcdforsalertnoyes');
delete_option('rcdalerttext');
delete_site_option('rcdalerttext');
delete_option('rcdfors-csjkey');
delete_site_option('rcdfors-csjkey');
delete_option('rcdforsftwelvekey');
delete_site_option('rcdforsftwelvekey');
delete_option('rcdfors-csckey');
delete_site_option('rcdfors-csckey');
delete_option('rcdforskey-crtlshifti');
delete_site_option('rcdforskey-crtlshifti');
delete_option('rcdfors-cukey');
delete_site_option('rcdfors-cukey');
delete_option('rcdfors_plugin_do_activate');
delete_site_option('rcdfors_plugin_do_activate');

