-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thub_disable_attachments', 'thub_custom_fields', 'thub_options', 'thub_plus_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', '_thub_log', 'type', 'file', 'link', 'document_category', '_thub_answer', 'thub_ticket_id', 'completed_date', 'thub_ticket_status', 'thub_ticket_type', 'thub_ticket_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', '_thub_log', 'type', 'file', 'link', 'document_category', '_thub_answer', 'thub_ticket_id', 'completed_date', 'thub_ticket_status', 'thub_ticket_type', 'thub_ticket_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', '_thub_log', 'type', 'file', 'link', 'document_category', '_thub_answer', 'thub_ticket_id', 'completed_date', 'thub_ticket_status', 'thub_ticket_type', 'thub_ticket_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', '_thub_log', 'type', 'file', 'link', 'document_category', '_thub_answer', 'thub_ticket_id', 'completed_date', 'thub_ticket_status', 'thub_ticket_type', 'thub_ticket_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'thcf_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'thcf_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'thcf_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'thcf_%';

