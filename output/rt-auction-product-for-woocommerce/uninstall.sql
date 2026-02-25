-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_current_bid', '_current_bid_user', '_auction_end_time', '_bid_history', 'rtapw_bid_amount', 'rtapw_bid_user_id', 'rtapw_bid_product_id', 'rtapw_bid_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_current_bid', '_current_bid_user', '_auction_end_time', '_bid_history', 'rtapw_bid_amount', 'rtapw_bid_user_id', 'rtapw_bid_product_id', 'rtapw_bid_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_current_bid', '_current_bid_user', '_auction_end_time', '_bid_history', 'rtapw_bid_amount', 'rtapw_bid_user_id', 'rtapw_bid_product_id', 'rtapw_bid_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_current_bid', '_current_bid_user', '_auction_end_time', '_bid_history', 'rtapw_bid_amount', 'rtapw_bid_user_id', 'rtapw_bid_product_id', 'rtapw_bid_time');

