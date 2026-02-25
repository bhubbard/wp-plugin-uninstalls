<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xswcusop-upselloptiondata');
delete_site_option('xswcusop-upselloptiondata');
delete_option('xswcusop-orderbumpdata');
delete_site_option('xswcusop-orderbumpdata');

