-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('floacowi_phone_contact_phone', 'floacowi_phone_contact_whatsapp', 'floacowi_phone_contact_greeting', 'floacowi_phone_contact_prefilled', 'floacowi_phone_contact_whatsapp_text', 'floacowi_phone_contact_call_text');

