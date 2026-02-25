-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scoreboardui_matches_link', 'scoreboardui_title', 'scoreboardui_url', 'scoreboardui_des', 'scoreboardui_link', 'scoreboardui_teams_link', 'scoreboardui_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('teams_profile', 'teams_score', 'sc_date', 'sc_status', 'sc_status_color', 'sc_watchLink', 'sc_ranking', 'sc_duration', 'sc_other_text', 'sc_other_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('teams_profile', 'teams_score', 'sc_date', 'sc_status', 'sc_status_color', 'sc_watchLink', 'sc_ranking', 'sc_duration', 'sc_other_text', 'sc_other_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('teams_profile', 'teams_score', 'sc_date', 'sc_status', 'sc_status_color', 'sc_watchLink', 'sc_ranking', 'sc_duration', 'sc_other_text', 'sc_other_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('teams_profile', 'teams_score', 'sc_date', 'sc_status', 'sc_status_color', 'sc_watchLink', 'sc_ranking', 'sc_duration', 'sc_other_text', 'sc_other_link');

