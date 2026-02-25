<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookiealert_attivo');
delete_site_option('cookiealert_attivo');
delete_option('cookiealert_testo');
delete_site_option('cookiealert_testo');
delete_option('cookiealert_informativa');
delete_site_option('cookiealert_informativa');
delete_option('cookiealert_link');
delete_site_option('cookiealert_link');
delete_option('cookiealert_testobottone');
delete_site_option('cookiealert_testobottone');
delete_option('cookiealert_colorebottone');
delete_site_option('cookiealert_colorebottone');
delete_option('cookiealert_posizione');
delete_site_option('cookiealert_posizione');

