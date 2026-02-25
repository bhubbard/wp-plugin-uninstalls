<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MEDME-setting');
delete_site_option('MEDME-setting');
delete_option('MEDME-setting-1');
delete_site_option('MEDME-setting-1');
delete_option('MEDME-setting-2');
delete_site_option('MEDME-setting-2');
delete_option('MEDME-setting-3');
delete_site_option('MEDME-setting-3');
delete_option('MEDME-setting-4');
delete_site_option('MEDME-setting-4');
delete_option('MEDME-setting-5');
delete_site_option('MEDME-setting-5');
delete_option('MEDME-setting-6');
delete_site_option('MEDME-setting-6');

