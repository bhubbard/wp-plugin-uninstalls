-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wats_notification_rules', 'wats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wats_ticket_priority', 'wats_ticket_status', 'wats_ticket_type', 'wats_ticket_product', 'wats_ticket_author_name', 'wats_ticket_author_email', 'wats_ticket_author_url', 'wats_ticket_number', 'first_name', 'last_name', 'wats_internal_update', 'wats_ticket_closure_date', 'wats_ticket_owner');
DELETE FROM wp_usermeta WHERE meta_key IN ('wats_ticket_priority', 'wats_ticket_status', 'wats_ticket_type', 'wats_ticket_product', 'wats_ticket_author_name', 'wats_ticket_author_email', 'wats_ticket_author_url', 'wats_ticket_number', 'first_name', 'last_name', 'wats_internal_update', 'wats_ticket_closure_date', 'wats_ticket_owner');
DELETE FROM wp_termmeta WHERE meta_key IN ('wats_ticket_priority', 'wats_ticket_status', 'wats_ticket_type', 'wats_ticket_product', 'wats_ticket_author_name', 'wats_ticket_author_email', 'wats_ticket_author_url', 'wats_ticket_number', 'first_name', 'last_name', 'wats_internal_update', 'wats_ticket_closure_date', 'wats_ticket_owner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wats_ticket_priority', 'wats_ticket_status', 'wats_ticket_type', 'wats_ticket_product', 'wats_ticket_author_name', 'wats_ticket_author_email', 'wats_ticket_author_url', 'wats_ticket_number', 'first_name', 'last_name', 'wats_internal_update', 'wats_ticket_closure_date', 'wats_ticket_owner');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wats_ticket_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wats_ticket_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wats_ticket_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wats_ticket_%';

