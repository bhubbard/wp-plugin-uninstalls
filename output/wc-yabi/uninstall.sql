-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yabi_settings', 'yabi_credit_note_number', 'yabi_invoice_number', 'yabi_create_prefix', 'yabi_resolution_link', 'yabi_save_prefixes', 'yabi_prefixes', 'yabi_resolution');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yabi_response', 'yabi_invoice', 'yabi_order_meta', 'yabi_graphQL', 'yabi_cancel', 'yabi_person');
DELETE FROM wp_usermeta WHERE meta_key IN ('yabi_response', 'yabi_invoice', 'yabi_order_meta', 'yabi_graphQL', 'yabi_cancel', 'yabi_person');
DELETE FROM wp_termmeta WHERE meta_key IN ('yabi_response', 'yabi_invoice', 'yabi_order_meta', 'yabi_graphQL', 'yabi_cancel', 'yabi_person');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yabi_response', 'yabi_invoice', 'yabi_order_meta', 'yabi_graphQL', 'yabi_cancel', 'yabi_person');

