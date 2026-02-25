-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mt_transient_keys', 'mt_settings', 'mt_labels', 'mt_show_playground_intro', 'mt_version', 'mt_license_key', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_valid';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dispute_reason', '_dispute_message', '_mt_user_init_expiration', '_mt_user_cart', '_receipt', '_mc_event_data', '_mt_sell_tickets', '_mt_hide_registration_form', '_mt_registration_options', '_mt_event_soldout', '_gateway', '_mt_shipping_address', '_is_paid', '_first_name', '_last_name', '_ticket_handling', '_email', '_phone', 'mt_phone', '_vat', 'mt_vat', '_mt_handling', '_mt_shipping', '_total_paid', '_discount', '_purchase_data', '_ticketing_method', '_mt_virtual_inventory', '_purchased', '_purchase', '_ticket', '_sequential_base', '_donation', '_mc_event_id', '_mt_event_expired', '_error_log', '_mt_send_email', '_mtdi_discount', '_transaction_data', '_tickets', '_returned', '_last_status', '_tickets_used', '_debug_data', '_notified', '_transaction_id', '_is_delivered', '_mt_event_notes', '_mc_event_location', '_mc_event_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dispute_reason', '_dispute_message', '_mt_user_init_expiration', '_mt_user_cart', '_receipt', '_mc_event_data', '_mt_sell_tickets', '_mt_hide_registration_form', '_mt_registration_options', '_mt_event_soldout', '_gateway', '_mt_shipping_address', '_is_paid', '_first_name', '_last_name', '_ticket_handling', '_email', '_phone', 'mt_phone', '_vat', 'mt_vat', '_mt_handling', '_mt_shipping', '_total_paid', '_discount', '_purchase_data', '_ticketing_method', '_mt_virtual_inventory', '_purchased', '_purchase', '_ticket', '_sequential_base', '_donation', '_mc_event_id', '_mt_event_expired', '_error_log', '_mt_send_email', '_mtdi_discount', '_transaction_data', '_tickets', '_returned', '_last_status', '_tickets_used', '_debug_data', '_notified', '_transaction_id', '_is_delivered', '_mt_event_notes', '_mc_event_location', '_mc_event_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dispute_reason', '_dispute_message', '_mt_user_init_expiration', '_mt_user_cart', '_receipt', '_mc_event_data', '_mt_sell_tickets', '_mt_hide_registration_form', '_mt_registration_options', '_mt_event_soldout', '_gateway', '_mt_shipping_address', '_is_paid', '_first_name', '_last_name', '_ticket_handling', '_email', '_phone', 'mt_phone', '_vat', 'mt_vat', '_mt_handling', '_mt_shipping', '_total_paid', '_discount', '_purchase_data', '_ticketing_method', '_mt_virtual_inventory', '_purchased', '_purchase', '_ticket', '_sequential_base', '_donation', '_mc_event_id', '_mt_event_expired', '_error_log', '_mt_send_email', '_mtdi_discount', '_transaction_data', '_tickets', '_returned', '_last_status', '_tickets_used', '_debug_data', '_notified', '_transaction_id', '_is_delivered', '_mt_event_notes', '_mc_event_location', '_mc_event_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dispute_reason', '_dispute_message', '_mt_user_init_expiration', '_mt_user_cart', '_receipt', '_mc_event_data', '_mt_sell_tickets', '_mt_hide_registration_form', '_mt_registration_options', '_mt_event_soldout', '_gateway', '_mt_shipping_address', '_is_paid', '_first_name', '_last_name', '_ticket_handling', '_email', '_phone', 'mt_phone', '_vat', 'mt_vat', '_mt_handling', '_mt_shipping', '_total_paid', '_discount', '_purchase_data', '_ticketing_method', '_mt_virtual_inventory', '_purchased', '_purchase', '_ticket', '_sequential_base', '_donation', '_mc_event_id', '_mt_event_expired', '_error_log', '_mt_send_email', '_mtdi_discount', '_transaction_data', '_tickets', '_returned', '_last_status', '_tickets_used', '_debug_data', '_notified', '_transaction_id', '_is_delivered', '_mt_event_notes', '_mc_event_location', '_mc_event_date');
DELETE FROM wp_postmeta WHERE meta_key IN ('_mt_labels', '_mass_email', '_notes', '_opt_out');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mt_labels', '_mass_email', '_notes', '_opt_out');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mt_labels', '_mass_email', '_notes', '_opt_out');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mt_labels', '_mass_email', '_notes', '_opt_out');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_seq_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_seq_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_seq_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_seq_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_mt_event_expired_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_mt_event_expired_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_mt_event_expired_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_mt_event_expired_%';

