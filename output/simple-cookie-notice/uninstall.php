<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jlplg_lovecoding-field1-cookie-message');
delete_site_option('jlplg_lovecoding-field1-cookie-message');
delete_option('jlplg_lovecoding-field3-cookie-button-text');
delete_site_option('jlplg_lovecoding-field3-cookie-button-text');
delete_option('jlplg_lovecoding-field2-checkbox-privacy-policy');
delete_site_option('jlplg_lovecoding-field2-checkbox-privacy-policy');
delete_option('jlplg_lovecoding-field5-background-color');
delete_site_option('jlplg_lovecoding-field5-background-color');
delete_option('jlplg_lovecoding-field6-text-color');
delete_site_option('jlplg_lovecoding-field6-text-color');
delete_option('jlplg_lovecoding-field7-button-background-color');
delete_site_option('jlplg_lovecoding-field7-button-background-color');
delete_option('jlplg_lovecoding-field8-button-text-color');
delete_site_option('jlplg_lovecoding-field8-button-text-color');
delete_option('jlplg_lovecoding-field4-cookie-plugin-placement');
delete_site_option('jlplg_lovecoding-field4-cookie-plugin-placement');
delete_option('jlplg_lovecoding-field9-cookie-expire-time');
delete_site_option('jlplg_lovecoding-field9-cookie-expire-time');

