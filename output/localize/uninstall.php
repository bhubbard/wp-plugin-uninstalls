<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('localize_lang');
delete_site_option('localize_lang');
delete_option('localize_lang_version');
delete_site_option('localize_lang_version');

// Delete Transients
delete_transient('localize_versions');
delete_site_transient('localize_versions');
delete_transient('localize_locale_data');
delete_site_transient('localize_locale_data');

