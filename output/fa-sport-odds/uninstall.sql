-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fa-sport-odds-translation', 'fa-sport-odds', 'fa_sport_odds_cache');

