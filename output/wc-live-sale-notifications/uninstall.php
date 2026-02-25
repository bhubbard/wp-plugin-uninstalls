<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xslsn-live-sale-notification');
delete_site_option('xslsn-live-sale-notification');
delete_option('xswclsn-live-sale-notification');
delete_site_option('xswclsn-live-sale-notification');

