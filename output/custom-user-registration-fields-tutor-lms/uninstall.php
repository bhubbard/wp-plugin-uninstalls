<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tutor_field_cuf_fields');
delete_site_option('tutor_field_cuf_fields');
delete_option('tutor_field_cif_fields');
delete_site_option('tutor_field_cif_fields');

