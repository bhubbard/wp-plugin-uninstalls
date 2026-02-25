-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event_group_id', '_unique_id', '_EventCurrencySymbol', '_tribe_ticket_header', '_EventOrigin', '_EventCurrencyPosition', '_thumbnail_id', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('event_group_id', '_unique_id', '_EventCurrencySymbol', '_tribe_ticket_header', '_EventOrigin', '_EventCurrencyPosition', '_thumbnail_id', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('event_group_id', '_unique_id', '_EventCurrencySymbol', '_tribe_ticket_header', '_EventOrigin', '_EventCurrencyPosition', '_thumbnail_id', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event_group_id', '_unique_id', '_EventCurrencySymbol', '_tribe_ticket_header', '_EventOrigin', '_EventCurrencyPosition', '_thumbnail_id', '_sku');

