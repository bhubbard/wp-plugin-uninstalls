<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myposeo_apikey');
delete_site_option('myposeo_apikey');
delete_option('myposeo_idCampaign');
delete_site_option('myposeo_idCampaign');

