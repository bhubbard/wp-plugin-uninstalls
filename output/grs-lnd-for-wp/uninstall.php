<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lnd-hide-config');
delete_site_option('lnd-hide-config');
delete_option('lnd-on-chain-address');
delete_site_option('lnd-on-chain-address');
delete_option('lnd-hostname');
delete_site_option('lnd-hostname');
delete_option('lnd-conn-timeout');
delete_site_option('lnd-conn-timeout');
delete_option('lnd-force-ssl');
delete_site_option('lnd-force-ssl');
delete_option('lnd-macaroon-name');
delete_site_option('lnd-macaroon-name');
delete_option('lnd-macaroon');
delete_site_option('lnd-macaroon');
delete_option('lnd-tls-cert-name');
delete_site_option('lnd-tls-cert-name');
delete_option('lnd-ssl-warn');
delete_site_option('lnd-ssl-warn');

