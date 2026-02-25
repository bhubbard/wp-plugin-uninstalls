<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('motyw_color');
delete_site_option('motyw_color');
delete_option('kategoria_color');
delete_site_option('kategoria_color');
delete_option('imie_nazwisko');
delete_site_option('imie_nazwisko');
delete_option('motto');
delete_site_option('motto');
delete_option('upload_image');
delete_site_option('upload_image');

