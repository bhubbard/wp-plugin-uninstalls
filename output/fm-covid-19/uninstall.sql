-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fm_covid_bg_colour', 'fm_covid_text_colour');

