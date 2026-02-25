<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dropdown_query');
delete_site_option('dropdown_query');
delete_option('dropdown_allowlinkback');
delete_site_option('dropdown_allowlinkback');
delete_option('dropdown_configmode');
delete_site_option('dropdown_configmode');
delete_option('dropdown_use');
delete_site_option('dropdown_use');
delete_option('dropdown_autoembed');
delete_site_option('dropdown_autoembed');
delete_option('dropdown_width');
delete_site_option('dropdown_width');
delete_option('dropdown_uselegacy');
delete_site_option('dropdown_uselegacy');

