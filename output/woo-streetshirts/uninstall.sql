-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_order_marked_sent_to_streetshirts');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_order_marked_sent_to_streetshirts');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_order_marked_sent_to_streetshirts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_order_marked_sent_to_streetshirts');

