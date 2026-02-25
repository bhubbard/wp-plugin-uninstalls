-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbe_settings_general_options', 'sbe_settings_email_options', 'tpul_settings_term_modal_options', 'uptime_ghost_options');

