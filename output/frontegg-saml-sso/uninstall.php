<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frontegg_saml_settings');
delete_site_option('frontegg_saml_settings');
delete_option('frontegg_saml_version');
delete_site_option('frontegg_saml_version');

// Delete Transients
delete_transient('frontegg_saml_updated_notice');
delete_site_transient('frontegg_saml_updated_notice');

