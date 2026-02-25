-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plzcr_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_plz_fresh_never', '_plz_fresh_interval_days', '_plz_fresh_last_reviewed', '_plz_fresh_snooze_until');
DELETE FROM wp_usermeta WHERE meta_key IN ('_plz_fresh_never', '_plz_fresh_interval_days', '_plz_fresh_last_reviewed', '_plz_fresh_snooze_until');
DELETE FROM wp_termmeta WHERE meta_key IN ('_plz_fresh_never', '_plz_fresh_interval_days', '_plz_fresh_last_reviewed', '_plz_fresh_snooze_until');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_plz_fresh_never', '_plz_fresh_interval_days', '_plz_fresh_last_reviewed', '_plz_fresh_snooze_until');

