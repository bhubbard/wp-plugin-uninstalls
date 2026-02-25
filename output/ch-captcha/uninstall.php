<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chc-textColor');
delete_site_option('chc-textColor');
delete_option('chc-backgroundColor');
delete_site_option('chc-backgroundColor');
delete_option('chc-imgWidth');
delete_site_option('chc-imgWidth');
delete_option('chc-imgHeight');
delete_site_option('chc-imgHeight');
delete_option('chc-noiceLines');
delete_site_option('chc-noiceLines');
delete_option('chc-noiceDots');
delete_site_option('chc-noiceDots');
delete_option('chc-noiceColor');
delete_site_option('chc-noiceColor');

