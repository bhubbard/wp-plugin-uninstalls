-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hwpet_settings', 'hwpet_lock', 'hwpet_locked_by', 'hwpet_lock_date', 'hwpet_lock_message');

