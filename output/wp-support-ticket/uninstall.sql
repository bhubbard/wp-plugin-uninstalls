-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('support_admin_email', 'support_admin_from_email', 'ticket_sc_page', 'ticket_before_login_message_create', 'ticket_before_login_message_search', 'ticket_before_login_message_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ticket_status', 'last_post_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ticket_status', 'last_post_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ticket_status', 'last_post_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ticket_status', 'last_post_date');

