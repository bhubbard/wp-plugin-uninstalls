<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brp_reading_plans_list');
delete_site_option('brp_reading_plans_list');
delete_option('bible_reading_plans_abs_api_key');
delete_site_option('bible_reading_plans_abs_api_key');
delete_option('bible_reading_plans_abs_versions');
delete_site_option('bible_reading_plans_abs_versions');
delete_option('bible_reading_plans_dbp_api_key');
delete_site_option('bible_reading_plans_dbp_api_key');
delete_option('bible_reading_plans_api_key');
delete_site_option('bible_reading_plans_api_key');
delete_option('bible_reading_plans_dbp_vers_default');
delete_site_option('bible_reading_plans_dbp_vers_default');
delete_option('bible_reading_plans_dbp_versions');
delete_site_option('bible_reading_plans_dbp_versions');
delete_option('bible_reading_plans_dbp_bible_id_to_iso');
delete_site_option('bible_reading_plans_dbp_bible_id_to_iso');
delete_option('bible_reading_plans_lng_code_to_2_ltr_cd');
delete_site_option('bible_reading_plans_lng_code_to_2_ltr_cd');
delete_option('bible_reading_plans_dbp_lang_id_to_iso');
delete_site_option('bible_reading_plans_dbp_lang_id_to_iso');
delete_option('bible_reading_plans_dbp_lang_id2iso_alt');
delete_site_option('bible_reading_plans_dbp_lang_id2iso_alt');
delete_option('bible_reading_plans_esv_api_key');
delete_site_option('bible_reading_plans_esv_api_key');
delete_option('bible_reading_plans_display_plan_name');
delete_site_option('bible_reading_plans_display_plan_name');
delete_option('bible_reading_plans_use_calendar');
delete_site_option('bible_reading_plans_use_calendar');
delete_option('bible_reading_plans_calendar_in_text');
delete_site_option('bible_reading_plans_calendar_in_text');
delete_option('bible_reading_plans_display_holy_days');
delete_site_option('bible_reading_plans_display_holy_days');
delete_option('bible_reading_plans_display_mvble_feasts');
delete_site_option('bible_reading_plans_display_mvble_feasts');
delete_option('bible_reading_plans_display_toc');
delete_site_option('bible_reading_plans_display_toc');
delete_option('bible_reading_plans_show_poweredby');
delete_site_option('bible_reading_plans_show_poweredby');
delete_option('bible_reading_plans_esv_versions');
delete_site_option('bible_reading_plans_esv_versions');

