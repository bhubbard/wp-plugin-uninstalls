<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ai_bm_mu_installed');
delete_site_transient('ai_bm_mu_installed');

