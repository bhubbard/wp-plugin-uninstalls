-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_leave_at_door_default_checked');
DELETE FROM wp_options WHERE option_name LIKE 'wc_leave_at_door_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('leave_at_door_checkbox', 'leave_at_door_instructions');
DELETE FROM wp_usermeta WHERE meta_key IN ('leave_at_door_checkbox', 'leave_at_door_instructions');
DELETE FROM wp_termmeta WHERE meta_key IN ('leave_at_door_checkbox', 'leave_at_door_instructions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('leave_at_door_checkbox', 'leave_at_door_instructions');

