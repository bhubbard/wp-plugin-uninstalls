-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('condotel_total_units', 'condotel_max_stay', 'condotel_guest_tracking', 'condotel_notify_email', 'condotel_email_enabled', 'condotel_allow_unit_edit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Unit_Number');
DELETE FROM wp_usermeta WHERE meta_key IN ('Unit_Number');
DELETE FROM wp_termmeta WHERE meta_key IN ('Unit_Number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Unit_Number');

