<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('option_erase_cache');
delete_site_option('option_erase_cache');
delete_option('option_cache_timeout');
delete_site_option('option_cache_timeout');
delete_option('option_idhal');
delete_site_option('option_idhal');
delete_option('option_type');
delete_site_option('option_type');
delete_option('option_choix');
delete_site_option('option_choix');
delete_option('option_infocontact');
delete_site_option('option_infocontact');
delete_option('option_groupe');
delete_site_option('option_groupe');
delete_option('option_email');
delete_site_option('option_email');
delete_option('option_tel');
delete_site_option('option_tel');
delete_option('option_social0');
delete_site_option('option_social0');
delete_option('option_social1');
delete_site_option('option_social1');
delete_option('option_social2');
delete_site_option('option_social2');
delete_option('option_social3');
delete_site_option('option_social3');
delete_option('option_lang');
delete_site_option('option_lang');

