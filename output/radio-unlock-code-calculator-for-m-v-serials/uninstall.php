<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('RCKDisableEndpoint');
delete_site_option('RCKDisableEndpoint');
delete_option('RCKAccLevel');
delete_site_option('RCKAccLevel');
delete_option('RCKCreditLink');
delete_site_option('RCKCreditLink');

