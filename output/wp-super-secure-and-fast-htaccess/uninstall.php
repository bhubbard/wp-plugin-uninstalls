<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsecure_uno');
delete_site_option('wpsecure_uno');
delete_option('wpsecure_due');
delete_site_option('wpsecure_due');
delete_option('wpsecure_tre');
delete_site_option('wpsecure_tre');
delete_option('wpsecure_quattro');
delete_site_option('wpsecure_quattro');
delete_option('wpsecure_cinque');
delete_site_option('wpsecure_cinque');
delete_option('wpsecure_sei');
delete_site_option('wpsecure_sei');
delete_option('wpsecure_sette');
delete_site_option('wpsecure_sette');
delete_option('apgnsm_n_otto');
delete_site_option('apgnsm_n_otto');
delete_option('apgnsm_n_nove');
delete_site_option('apgnsm_n_nove');
delete_option('wpsecure_otto');
delete_site_option('wpsecure_otto');
delete_option('wpsecure_nove');
delete_site_option('wpsecure_nove');

