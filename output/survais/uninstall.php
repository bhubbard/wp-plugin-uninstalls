<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('survais_active_survai');
delete_site_option('survais_active_survai');
delete_option('survais_embed_code');
delete_site_option('survais_embed_code');
delete_option('survais_options');
delete_site_option('survais_options');

