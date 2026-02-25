<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pagina_config_tematres_url');
delete_site_option('pagina_config_tematres_url');
delete_option('tematres_tag_name');
delete_site_option('tematres_tag_name');
delete_option('post_types');
delete_site_option('post_types');

