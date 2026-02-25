<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('meks_ta_ver');
delete_site_option('meks_ta_ver');
delete_option('meks_ta_opts');
delete_site_option('meks_ta_opts');

