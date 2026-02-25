-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kasppaga_wallet_configured', 'kaspa_rate_last_updated', 'kasppaga_wallet_kpub', 'kasppaga_wallet_address', 'kasppaga_next_address_index', 'kasppaga_wallet_setup_date', 'kasppaga_address_type', 'kasppaga_wallet_data', 'woocommerce_kaspa_settings', 'kaspa_rate_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kasppaga_review_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('kasppaga_review_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('kasppaga_review_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kasppaga_review_notice_dismissed');

