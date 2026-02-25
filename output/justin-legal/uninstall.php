<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('justin_legal_hash');
delete_site_option('justin_legal_hash');
delete_option('justin_legal_lawFirmName');
delete_site_option('justin_legal_lawFirmName');
delete_option('justin_legal_emailAddress');
delete_site_option('justin_legal_emailAddress');
delete_option('justin_legal_hex');
delete_site_option('justin_legal_hex');
delete_option('justin_legal_font');
delete_site_option('justin_legal_font');
delete_option('justin_legal_borderState');
delete_site_option('justin_legal_borderState');

