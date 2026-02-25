-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('h24_ca_gdpr_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'shipping_phone', 'thumbnail_id', 'my_database_admin_active_db', 'WooCommerceEventsTicketsGenerated', 'WooCommerceEventsTicketID', 'WooCommerceEventsTicketHash', 'WooCommerceEventsProductID');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'shipping_phone', 'thumbnail_id', 'my_database_admin_active_db', 'WooCommerceEventsTicketsGenerated', 'WooCommerceEventsTicketID', 'WooCommerceEventsTicketHash', 'WooCommerceEventsProductID');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'shipping_phone', 'thumbnail_id', 'my_database_admin_active_db', 'WooCommerceEventsTicketsGenerated', 'WooCommerceEventsTicketID', 'WooCommerceEventsTicketHash', 'WooCommerceEventsProductID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'shipping_phone', 'thumbnail_id', 'my_database_admin_active_db', 'WooCommerceEventsTicketsGenerated', 'WooCommerceEventsTicketID', 'WooCommerceEventsTicketHash', 'WooCommerceEventsProductID');

