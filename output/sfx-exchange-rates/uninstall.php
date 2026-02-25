<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('converted');
delete_site_option('converted');
delete_option('exchanges');
delete_site_option('exchanges');

// Delete Transients
delete_transient('sfxexchangerates_flush');
delete_site_transient('sfxexchangerates_flush');

