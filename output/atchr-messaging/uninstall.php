<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atchr_entity_id');
delete_site_option('atchr_entity_id');
delete_option('atchr_embed_code');
delete_site_option('atchr_embed_code');

