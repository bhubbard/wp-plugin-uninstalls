<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('firmao_organization_identifier');
delete_site_option('firmao_organization_identifier');
delete_option('firmao_additional_parameters');
delete_site_option('firmao_additional_parameters');

