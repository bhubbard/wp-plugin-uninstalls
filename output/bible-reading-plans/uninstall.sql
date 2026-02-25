-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brp_reading_plans_list', 'bible_reading_plans_abs_api_key', 'bible_reading_plans_abs_versions', 'bible_reading_plans_dbp_api_key', 'bible_reading_plans_api_key', 'bible_reading_plans_dbp_vers_default', 'bible_reading_plans_dbp_versions', 'bible_reading_plans_dbp_bible_id_to_iso', 'bible_reading_plans_lng_code_to_2_ltr_cd', 'bible_reading_plans_dbp_lang_id_to_iso', 'bible_reading_plans_dbp_lang_id2iso_alt', 'bible_reading_plans_esv_api_key', 'bible_reading_plans_display_plan_name', 'bible_reading_plans_use_calendar', 'bible_reading_plans_calendar_in_text', 'bible_reading_plans_display_holy_days', 'bible_reading_plans_display_mvble_feasts', 'bible_reading_plans_display_toc', 'bible_reading_plans_show_poweredby', 'bible_reading_plans_esv_versions');

