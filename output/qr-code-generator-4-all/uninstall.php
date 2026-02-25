<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qrgen4all_sitetoken');
delete_site_option('qrgen4all_sitetoken');
delete_option('qrgen4all_ctoken');
delete_site_option('qrgen4all_ctoken');
delete_option('qrgen4all_tsv');
delete_site_option('qrgen4all_tsv');

