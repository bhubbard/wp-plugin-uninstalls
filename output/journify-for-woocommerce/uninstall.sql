-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('journify_wc_track_purchase', 'journify_wc_track_begin_checkout', 'journify_wc_track_add_to_cart', 'journify_wc_track_view_item', 'journify_wc_track_view_item_list', 'journify_wc_track_search', 'journify_wc_track_add_payment_info', 'journify_wc_track_login', 'journify_wc_track_sign_up', 'journify_wc_write_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('journify_track_login', 'journify_track_sign_up');
DELETE FROM wp_usermeta WHERE meta_key IN ('journify_track_login', 'journify_track_sign_up');
DELETE FROM wp_termmeta WHERE meta_key IN ('journify_track_login', 'journify_track_sign_up');
DELETE FROM wp_commentmeta WHERE meta_key IN ('journify_track_login', 'journify_track_sign_up');

