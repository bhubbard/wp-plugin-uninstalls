-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_active_discounts';
DELETE FROM wp_options WHERE option_name LIKE '%_cross_subtotal_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_cross_total_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_you_saved_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_you_saved_custom_text';
DELETE FROM wp_options WHERE option_name LIKE '%_you_saved_round';
DELETE FROM wp_options WHERE option_name LIKE '%_active_discounts';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_dmfwc_you_saved');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_dmfwc_you_saved');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_dmfwc_you_saved');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_dmfwc_you_saved');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_admin_notices';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_admin_notices';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_admin_notices';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_admin_notices';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_discount_start_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_discount_start_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_discount_start_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_discount_start_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_discount_end_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_discount_end_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_discount_end_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_discount_end_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_discount_activated';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_discount_activated';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_discount_activated';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_discount_activated';

