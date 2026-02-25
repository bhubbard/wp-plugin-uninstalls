<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zeffy_embed_campaign_options');
delete_site_option('zeffy_embed_campaign_options');

