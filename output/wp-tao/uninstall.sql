-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptao_hidden_widgets', 'wptao_dashboard_tiles_order', 'wptao_version', 'wptao_completed_upgrades', 'wptao_doing_upgrade', 'woocommerce_enable_guest_checkout', 'woocommerce_enable_coupons', 'woocommerce_force_ssl_checkout', 'wptao_mail_notice_dissmis', 'wptao_currency_set', 'wptao_settings', 'wptao_subscribed', 'wptao_promobox_custom_work_dissmis', 'wtbp_wptao_db_delete_events');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%wptao_events_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%wptao_events_meta_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%wptao_events_tags_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%wptao_fingerprints_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%wptao_users_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%wptao_users_meta_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wptao_events_per_page', '_edd_sl_payment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wptao_events_per_page', '_edd_sl_payment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wptao_events_per_page', '_edd_sl_payment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wptao_events_per_page', '_edd_sl_payment_id');

