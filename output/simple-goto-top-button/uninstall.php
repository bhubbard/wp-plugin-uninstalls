<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('activearrow');
delete_site_option('activearrow');
delete_option('btnstyle');
delete_site_option('btnstyle');
delete_option('custom_arrowbtn');
delete_site_option('custom_arrowbtn');
delete_option('btnpos');
delete_site_option('btnpos');
delete_option('btnresp');
delete_site_option('btnresp');
delete_option('btnhot');
delete_site_option('btnhot');
delete_option('btnanimate');
delete_site_option('btnanimate');

