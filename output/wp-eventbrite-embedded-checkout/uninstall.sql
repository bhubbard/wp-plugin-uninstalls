-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpeec-event-id', 'wpeec-event-form-mode', 'wpeec-frame-height', 'wpeec-button-text');

