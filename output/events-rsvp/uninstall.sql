-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ersvp-settings', 'ersvp-settings ');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('date', 'max_registrations', 'waiting_list', 'name', 'email', 'phone', 'additional_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('date', 'max_registrations', 'waiting_list', 'name', 'email', 'phone', 'additional_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('date', 'max_registrations', 'waiting_list', 'name', 'email', 'phone', 'additional_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('date', 'max_registrations', 'waiting_list', 'name', 'email', 'phone', 'additional_info');

