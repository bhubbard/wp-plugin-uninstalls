<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ninestarki_language');
delete_site_option('ninestarki_language');
delete_option('ninestarki_first_install');
delete_site_option('ninestarki_first_install');
delete_option('ninestarki_restore_defaults');
delete_site_option('ninestarki_restore_defaults');
delete_option('ninestarki_title_year');
delete_site_option('ninestarki_title_year');
delete_option('ninestarki_title_month');
delete_site_option('ninestarki_title_month');
delete_option('ninestarki_title_expression');
delete_site_option('ninestarki_title_expression');
delete_option('ninestarki_character_first_number_1');
delete_site_option('ninestarki_character_first_number_1');
delete_option('ninestarki_character_first_number_2');
delete_site_option('ninestarki_character_first_number_2');
delete_option('ninestarki_character_first_number_3');
delete_site_option('ninestarki_character_first_number_3');
delete_option('ninestarki_character_first_number_4');
delete_site_option('ninestarki_character_first_number_4');
delete_option('ninestarki_character_first_number_5');
delete_site_option('ninestarki_character_first_number_5');
delete_option('ninestarki_character_first_number_6');
delete_site_option('ninestarki_character_first_number_6');
delete_option('ninestarki_character_first_number_7');
delete_site_option('ninestarki_character_first_number_7');
delete_option('ninestarki_character_first_number_8');
delete_site_option('ninestarki_character_first_number_8');
delete_option('ninestarki_character_first_number_9');
delete_site_option('ninestarki_character_first_number_9');
delete_option('ninestarki_description_1');
delete_site_option('ninestarki_description_1');
delete_option('ninestarki_description_2');
delete_site_option('ninestarki_description_2');
delete_option('ninestarki_description_3');
delete_site_option('ninestarki_description_3');
delete_option('ninestarki_description_4');
delete_site_option('ninestarki_description_4');
delete_option('ninestarki_description_5');
delete_site_option('ninestarki_description_5');
delete_option('ninestarki_description_6');
delete_site_option('ninestarki_description_6');
delete_option('ninestarki_description_7');
delete_site_option('ninestarki_description_7');
delete_option('ninestarki_description_8');
delete_site_option('ninestarki_description_8');
delete_option('ninestarki_description_9');
delete_site_option('ninestarki_description_9');

