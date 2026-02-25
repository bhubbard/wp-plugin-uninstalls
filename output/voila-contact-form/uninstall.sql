-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ict101s_contact_form_op_array');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sender_first_name', 'sender_last_name', 'sender_email', 'sender_phone', 'date');
DELETE FROM wp_usermeta WHERE meta_key IN ('sender_first_name', 'sender_last_name', 'sender_email', 'sender_phone', 'date');
DELETE FROM wp_termmeta WHERE meta_key IN ('sender_first_name', 'sender_last_name', 'sender_email', 'sender_phone', 'date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sender_first_name', 'sender_last_name', 'sender_email', 'sender_phone', 'date');

