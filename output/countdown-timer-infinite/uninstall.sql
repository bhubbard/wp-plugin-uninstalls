-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('countdowncdt_timer_installed', 'cdt_inf_basics', 'cdt_inf_color');

