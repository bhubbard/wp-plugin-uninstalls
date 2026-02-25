<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ownerrez_apiRoot');
delete_site_option('ownerrez_apiRoot');
delete_option('ownerrez_username');
delete_site_option('ownerrez_username');
delete_option('ownerrez_token');
delete_site_option('ownerrez_token');
delete_option('ownerrez_externalSiteName');
delete_site_option('ownerrez_externalSiteName');
delete_option('ownerrez_webhookToken');
delete_site_option('ownerrez_webhookToken');
delete_option('ownerrez_externalSiteId');
delete_site_option('ownerrez_externalSiteId');
delete_option('ownerrez_do_activation_redirect');
delete_site_option('ownerrez_do_activation_redirect');

