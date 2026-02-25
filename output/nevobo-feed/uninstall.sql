-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feed', 'aantal', 'sporthal', 'plaats', 'vereniging', 'ical', 'sets', 'naamlengte_prog', 'naamlengte_uitslag', 'naamlengte_stand', 'nevobo_maps', 'maps_home', 'image_set', 'highlight_color', 'standen_aantal', 'uitslagen_aantal', 'programma_aantal', '$naamlengte_uitslag');

