-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ccr_event_date', 'ccr_event_location', 'ccr_event_gate', 'ccr_event_register_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('ccr_event_date', 'ccr_event_location', 'ccr_event_gate', 'ccr_event_register_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('ccr_event_date', 'ccr_event_location', 'ccr_event_gate', 'ccr_event_register_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ccr_event_date', 'ccr_event_location', 'ccr_event_gate', 'ccr_event_register_link');

