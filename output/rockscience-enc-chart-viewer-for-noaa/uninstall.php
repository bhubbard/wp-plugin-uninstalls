<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rockscience_enc_default_lat');
delete_site_option('rockscience_enc_default_lat');
delete_option('rockscience_enc_default_lng');
delete_site_option('rockscience_enc_default_lng');

