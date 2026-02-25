-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pusherfcm-settings-state', 'pusherfcm-settings-key', 'pusherfcm-settings-id', 'pusherfcm-settings-topic', 'pusherfcm-settings-msg', 'pusherfcm-ex-pusherPost', 'pusherfcm-ex-secret', 'pusherfcm-ex-api');

