<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('limitar_blogs_limite');
delete_site_option('limitar_blogs_limite');
delete_option('limitar_blogs_mensaje_error');
delete_site_option('limitar_blogs_mensaje_error');
delete_option('limitar_blogs_excluir_superadmins');
delete_site_option('limitar_blogs_excluir_superadmins');

