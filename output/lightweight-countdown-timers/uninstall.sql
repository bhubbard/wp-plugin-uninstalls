-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwcd_installing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lwcd_timer_deadline', '_lwcd_timer_format', '_lwcd_timer_units');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lwcd_timer_deadline', '_lwcd_timer_format', '_lwcd_timer_units');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lwcd_timer_deadline', '_lwcd_timer_format', '_lwcd_timer_units');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lwcd_timer_deadline', '_lwcd_timer_format', '_lwcd_timer_units');

