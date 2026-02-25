-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecet_multiple_setting', 'ecet_plugin_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tribe_tickets_list', '_tribe_tickets_ar_iac', '_EventStartDate', '_EventEndDate', '_ticket_start_date', '_ticket_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tribe_tickets_list', '_tribe_tickets_ar_iac', '_EventStartDate', '_EventEndDate', '_ticket_start_date', '_ticket_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tribe_tickets_list', '_tribe_tickets_ar_iac', '_EventStartDate', '_EventEndDate', '_ticket_start_date', '_ticket_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tribe_tickets_list', '_tribe_tickets_ar_iac', '_EventStartDate', '_EventEndDate', '_ticket_start_date', '_ticket_end_date');

