<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('deckbird_embed_link');
delete_site_option('deckbird_embed_link');
delete_option('deckbird_show_prompt');
delete_site_option('deckbird_show_prompt');

