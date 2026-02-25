<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('argonz_groq_api_key');
delete_site_option('argonz_groq_api_key');
delete_option('argonz_aiml_api_key');
delete_site_option('argonz_aiml_api_key');
delete_option('argonz_api_service');
delete_site_option('argonz_api_service');
delete_option('argonz_api_models');
delete_site_option('argonz_api_models');

