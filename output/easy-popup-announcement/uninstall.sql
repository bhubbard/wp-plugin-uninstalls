-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epa_default_id', 'epa_enable', 'epa_bgcolor', 'epa_popup_delay', 'epa_expire', 'epa_popup_padding', 'epa_effect', 'epa_width');

