<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('monbillet_embed_field_twig_sandbox');
delete_site_option('monbillet_embed_field_twig_sandbox');
delete_option('monbillet_embed_field_api_token');
delete_site_option('monbillet_embed_field_api_token');
delete_option('monbillet_embed_field_api_cache_duration');
delete_site_option('monbillet_embed_field_api_cache_duration');

