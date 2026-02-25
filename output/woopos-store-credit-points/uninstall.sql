-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woopos_credit_points_store_credit_enable', 'woopos_credit_points_reward_points_enable', 'woopos_credit_points_store_credit_message', 'woopos_credit_points_reward_points_zero_message', 'woopos_credit_points_reward_points_not_zero_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woopos_account_credit', 'woopos_account_points', 'woopos_account_points_redeemable', 'woopos_account_points_redeemable_amount', 'woopos_credit_used', 'woopos_points_used', 'woopos_credit_removed', 'woopos_points_removed', '_order_total', '_recurring_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('woopos_account_credit', 'woopos_account_points', 'woopos_account_points_redeemable', 'woopos_account_points_redeemable_amount', 'woopos_credit_used', 'woopos_points_used', 'woopos_credit_removed', 'woopos_points_removed', '_order_total', '_recurring_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('woopos_account_credit', 'woopos_account_points', 'woopos_account_points_redeemable', 'woopos_account_points_redeemable_amount', 'woopos_credit_used', 'woopos_points_used', 'woopos_credit_removed', 'woopos_points_removed', '_order_total', '_recurring_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woopos_account_credit', 'woopos_account_points', 'woopos_account_points_redeemable', 'woopos_account_points_redeemable_amount', 'woopos_credit_used', 'woopos_points_used', 'woopos_credit_removed', 'woopos_points_removed', '_order_total', '_recurring_payment_method');

