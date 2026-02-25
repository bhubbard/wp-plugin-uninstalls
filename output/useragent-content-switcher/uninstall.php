<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uac_switcher');
delete_site_option('uac_switcher');
delete_option('useragentcontentswitcher_useragent_tb');
delete_site_option('useragentcontentswitcher_useragent_tb');
delete_option('useragentcontentswitcher_useragent_sp');
delete_site_option('useragentcontentswitcher_useragent_sp');
delete_option('useragentcontentswitcher_useragent_mb');
delete_site_option('useragentcontentswitcher_useragent_mb');

