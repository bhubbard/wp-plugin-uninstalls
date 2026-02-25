<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('artiss_code_embed');
delete_site_option('artiss_code_embed');
delete_option('code_embed_version');
delete_site_option('code_embed_version');

