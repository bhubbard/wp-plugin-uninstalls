<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_nero_ai_image_optimizer_api_key');
delete_site_option('wc_nero_ai_image_optimizer_api_key');

