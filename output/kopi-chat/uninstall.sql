-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kpctb_embedded_code', 'kpctb_security_key', 'kpctb_channel_id');

