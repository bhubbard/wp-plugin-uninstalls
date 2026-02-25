<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selectpage');
delete_site_option('selectpage');
delete_option('PluralForms');
delete_site_option('PluralForms');
delete_option('exactMatchesOnly');
delete_site_option('exactMatchesOnly');
delete_option('selectpost');
delete_site_option('selectpost');

