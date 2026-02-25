-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zutalw_game_title', 'zutalw_popup_delay', 'zutalw_max_spins', 'zutalw_reset_days', 'zutalw_recaptcha_site_key', 'zutalw_recaptcha_secret_key');

