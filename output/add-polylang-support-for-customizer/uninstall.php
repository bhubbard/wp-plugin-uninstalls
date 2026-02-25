<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('polylang');
delete_site_option('polylang');
delete_option('apsfc_force_lang');
delete_site_option('apsfc_force_lang');

// Delete Transients
delete_transient('pll_languages_list');
delete_site_transient('pll_languages_list');

