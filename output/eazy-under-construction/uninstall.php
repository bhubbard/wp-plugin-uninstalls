<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('underConstructionActivationStatus');
delete_site_option('underConstructionActivationStatus');
delete_option('underConstructionDisplayOption');
delete_site_option('underConstructionDisplayOption');
delete_option('underConstructionCustomText');
delete_site_option('underConstructionCustomText');
delete_option('underConstructionHTML');
delete_site_option('underConstructionHTML');
delete_option('underConstructionHTTPStatus');
delete_site_option('underConstructionHTTPStatus');
delete_option('underConstructionRedirectURL');
delete_site_option('underConstructionRedirectURL');
delete_option('underConstructionIPWhitelist');
delete_site_option('underConstructionIPWhitelist');
delete_option('underConstructionRequiredRole');
delete_site_option('underConstructionRequiredRole');
delete_option('underConstructionArchive');
delete_site_option('underConstructionArchive');

