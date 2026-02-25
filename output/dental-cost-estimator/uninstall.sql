-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dentcoes_enabled_treatment', 'dentcoes_selected_currency', 'dce_enabled_treatment', 'dce_selected_currency');

