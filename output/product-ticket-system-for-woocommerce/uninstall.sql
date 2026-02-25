-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcpt-statusoptions', 'wcpt-ticketno', 'wcpt-status', 'wcpt-type', 'wcpt-priority', 'wcpt-product', 'wcpt-attachment', 'wcpt-closedate', 'wcpt-metafield1', 'wcpt-custextfield', 'wcpt-users', 'wcpt-ticketno-fr', 'wcpt-status-fr', 'wcpt-type-fr', 'wcpt-priority-fr', 'wcpt-product-fr', 'wcpt-attachment-fr', 'wcpt-closedate-fr', 'wcpt-metafield1fr', 'wcpt-typeoptions', 'wcpt-priorityoption', 'wcpt-adminsubject', 'wcpt-admin_to', 'wcpt-customersubject', 'wcpt-customer_to', 'wcpt-deletedata');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_status', '_closedate', '_type', '_priority', '_order', '_product', '_custextfieldval', '_second_featured_img', '_ticket_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('_status', '_closedate', '_type', '_priority', '_order', '_product', '_custextfieldval', '_second_featured_img', '_ticket_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('_status', '_closedate', '_type', '_priority', '_order', '_product', '_custextfieldval', '_second_featured_img', '_ticket_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_status', '_closedate', '_type', '_priority', '_order', '_product', '_custextfieldval', '_second_featured_img', '_ticket_no');

