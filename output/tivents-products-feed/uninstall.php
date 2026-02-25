<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tivents_partner_id');
delete_site_option('tivents_partner_id');
delete_option('tivents_primary_color');
delete_site_option('tivents_primary_color');
delete_option('tivents_secondary_color');
delete_site_option('tivents_secondary_color');
delete_option('tivents_text_color');
delete_site_option('tivents_text_color');

