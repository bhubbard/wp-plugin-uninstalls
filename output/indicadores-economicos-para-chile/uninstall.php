<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('indiecpa_indicadores_chile');
delete_site_transient('indiecpa_indicadores_chile');

