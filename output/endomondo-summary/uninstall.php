<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('endomondo-summary_endoid');
delete_site_option('endomondo-summary_endoid');
delete_option('endomondo-summary_method');
delete_site_option('endomondo-summary_method');
delete_option('endomondo-summary_cssloc');
delete_site_option('endomondo-summary_cssloc');

