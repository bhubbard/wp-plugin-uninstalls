<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ays_survey_maker_upgrade_plugin');
delete_site_option('ays_survey_maker_upgrade_plugin');
delete_option('ays_quiz_integrations');
delete_site_option('ays_quiz_integrations');
delete_option('ays_survey_db_version');
delete_site_option('ays_survey_db_version');

