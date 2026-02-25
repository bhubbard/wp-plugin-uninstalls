-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themify_event_post', 'themify_saved_colors', 'themify_saved_gradients');
DELETE FROM wp_options WHERE option_name LIKE 'themify_saved_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('repeat', 'repeat_x', 'to_be_announced', 'start_date', 'end_date', 'event_end_date_hide', 'event_attendance', 'organizer_name', 'organizer_url', 'performer_name', '_wp_attachment_backup_sizes', 'buy_tickets_price', 'buy_tickets_currency', 'buy_tickets', 'buy_tickets_label', 'ticket_purchase_start_date', 'ticket_purchase_end_date', 'popup_show', 'location', 'map_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('repeat', 'repeat_x', 'to_be_announced', 'start_date', 'end_date', 'event_end_date_hide', 'event_attendance', 'organizer_name', 'organizer_url', 'performer_name', '_wp_attachment_backup_sizes', 'buy_tickets_price', 'buy_tickets_currency', 'buy_tickets', 'buy_tickets_label', 'ticket_purchase_start_date', 'ticket_purchase_end_date', 'popup_show', 'location', 'map_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('repeat', 'repeat_x', 'to_be_announced', 'start_date', 'end_date', 'event_end_date_hide', 'event_attendance', 'organizer_name', 'organizer_url', 'performer_name', '_wp_attachment_backup_sizes', 'buy_tickets_price', 'buy_tickets_currency', 'buy_tickets', 'buy_tickets_label', 'ticket_purchase_start_date', 'ticket_purchase_end_date', 'popup_show', 'location', 'map_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('repeat', 'repeat_x', 'to_be_announced', 'start_date', 'end_date', 'event_end_date_hide', 'event_attendance', 'organizer_name', 'organizer_url', 'performer_name', '_wp_attachment_backup_sizes', 'buy_tickets_price', 'buy_tickets_currency', 'buy_tickets', 'buy_tickets_label', 'ticket_purchase_start_date', 'ticket_purchase_end_date', 'popup_show', 'location', 'map_address');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attach_id';

