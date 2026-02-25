#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brp_reading_plans_list'
wp option delete 'bible_reading_plans_abs_api_key'
wp option delete 'bible_reading_plans_abs_versions'
wp option delete 'bible_reading_plans_dbp_api_key'
wp option delete 'bible_reading_plans_api_key'
wp option delete 'bible_reading_plans_dbp_vers_default'
wp option delete 'bible_reading_plans_dbp_versions'
wp option delete 'bible_reading_plans_dbp_bible_id_to_iso'
wp option delete 'bible_reading_plans_lng_code_to_2_ltr_cd'
wp option delete 'bible_reading_plans_dbp_lang_id_to_iso'
wp option delete 'bible_reading_plans_dbp_lang_id2iso_alt'
wp option delete 'bible_reading_plans_esv_api_key'
wp option delete 'bible_reading_plans_display_plan_name'
wp option delete 'bible_reading_plans_use_calendar'
wp option delete 'bible_reading_plans_calendar_in_text'
wp option delete 'bible_reading_plans_display_holy_days'
wp option delete 'bible_reading_plans_display_mvble_feasts'
wp option delete 'bible_reading_plans_display_toc'
wp option delete 'bible_reading_plans_show_poweredby'
wp option delete 'bible_reading_plans_esv_versions'

