-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_discount_rate', 'default_commission_rate', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_affiliate_reference', '_affiliate_currency', '_affiliate_discount_rate', '_affiliate_commission_rate', '_aff_user_id', '_aff_discount', '_affiliate_invited_by', '_aff_balance_approved', '_affiliate_balance', '_aff_balance_spent', '_aff_balance_spent_rollback', '_aff_balance_spent_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_affiliate_reference', '_affiliate_currency', '_affiliate_discount_rate', '_affiliate_commission_rate', '_aff_user_id', '_aff_discount', '_affiliate_invited_by', '_aff_balance_approved', '_affiliate_balance', '_aff_balance_spent', '_aff_balance_spent_rollback', '_aff_balance_spent_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_affiliate_reference', '_affiliate_currency', '_affiliate_discount_rate', '_affiliate_commission_rate', '_aff_user_id', '_aff_discount', '_affiliate_invited_by', '_aff_balance_approved', '_affiliate_balance', '_aff_balance_spent', '_aff_balance_spent_rollback', '_aff_balance_spent_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_affiliate_reference', '_affiliate_currency', '_affiliate_discount_rate', '_affiliate_commission_rate', '_aff_user_id', '_aff_discount', '_affiliate_invited_by', '_aff_balance_approved', '_affiliate_balance', '_aff_balance_spent', '_aff_balance_spent_rollback', '_aff_balance_spent_id');

