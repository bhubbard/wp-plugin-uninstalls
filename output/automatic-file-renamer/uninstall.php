<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AFR_prefixe');
delete_site_option('AFR_prefixe');
delete_option('AFR_suffixe');
delete_site_option('AFR_suffixe');
delete_option('AFR_activation');
delete_site_option('AFR_activation');
delete_option('AFR_redirection');
delete_site_option('AFR_redirection');
delete_option('AFR_Ou_Rediriger');
delete_site_option('AFR_Ou_Rediriger');
delete_option('AFR_roles_config');
delete_site_option('AFR_roles_config');

