<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_gtchatpro_code_snippet_show');
delete_site_option('_gtchatpro_code_snippet_show');
delete_option('_gtchatpro_code_snippet_text');
delete_site_option('_gtchatpro_code_snippet_text');

