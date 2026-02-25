<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DisplayPost');
delete_site_option('DisplayPost');
delete_option('OrdenPor');
delete_site_option('OrdenPor');
delete_option('CharacterMin');
delete_site_option('CharacterMin');
delete_option('DisplayPost_Act');
delete_site_option('DisplayPost_Act');

