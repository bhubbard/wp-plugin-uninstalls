-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('termin_kalender_kategorien', 'termin_kalender_events', 'termin_kalender_options', 'termin_kalender_todo_list_tasks', 'termin_kalender_list_templates', 'termin_kalender_dashicons', 'ter_kal_checkbox_values', 'ter_kal_timed_event_duration', 'ter_kal_termin_basisfelder', 'ter_kal_dashicon_list', 'ter_kal_dashicons', 'ter_kal_lang', 'ter_kal_selected_lable', 'termin_kalender_version', 'termin_kalender_first_run', 'ter_kal_formularfelder', 'ter_kal_kategorie', 'ter_kal_kalender_daten', 'ter_kal_termin_zusatzfelder', 'ter_kal_kategorien', 'ter_kal_kalender_daten_backup');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ter_kal_start', '_ter_kal_end', '_ter_kal_location', '_ter_kal_all_day', '_ter_kal_freq', '_ter_kal_until', '_ter_kal_bg_color', '_ter_kal_text_color', '_ter_kal_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ter_kal_start', '_ter_kal_end', '_ter_kal_location', '_ter_kal_all_day', '_ter_kal_freq', '_ter_kal_until', '_ter_kal_bg_color', '_ter_kal_text_color', '_ter_kal_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ter_kal_start', '_ter_kal_end', '_ter_kal_location', '_ter_kal_all_day', '_ter_kal_freq', '_ter_kal_until', '_ter_kal_bg_color', '_ter_kal_text_color', '_ter_kal_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ter_kal_start', '_ter_kal_end', '_ter_kal_location', '_ter_kal_all_day', '_ter_kal_freq', '_ter_kal_until', '_ter_kal_bg_color', '_ter_kal_text_color', '_ter_kal_icon');

