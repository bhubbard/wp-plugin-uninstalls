-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acl_wooacd_custom_request', 'acl_wooacd_traveller', 'acl_wooacd_estimated_delivery_time', 'acl_wooacd_menus', 'acl_wooacd_enable_notifications', 'acl_wooacd_set_estimated_delivery_time', 'acl_wooacd_price_breakdown', 'acl_wooacd_note_placeholder', 'acl_wooacd_phrase');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wooacd_cost_breakdown');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wooacd_cost_breakdown');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wooacd_cost_breakdown');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wooacd_cost_breakdown');

