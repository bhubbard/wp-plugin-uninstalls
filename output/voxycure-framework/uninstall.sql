-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voxycure_tracking_consent', 'voxycure_tracking_consent_declined_at', 'voxyframe_settings', 'voxycure_flush_rewrite');

