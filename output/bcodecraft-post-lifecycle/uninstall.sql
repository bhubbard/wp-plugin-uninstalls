-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bclc_last_audit_run', 'bclc_last_expiration_check', 'bclc_needs_reschedule', 'bclc_settings', 'bclc_activated_at', 'bclc_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bclc_expiration_action', '_bclc_expiration_date', '_bclc_expired_at', '_bclc_expired_by');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bclc_expiration_action', '_bclc_expiration_date', '_bclc_expired_at', '_bclc_expired_by');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bclc_expiration_action', '_bclc_expiration_date', '_bclc_expired_at', '_bclc_expired_by');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bclc_expiration_action', '_bclc_expiration_date', '_bclc_expired_at', '_bclc_expired_by');

