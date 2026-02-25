-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('noo_membership_freemium', 'noo_membership_freemium_featured_num', 'rp_donate_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_membership_package', '_remaining_properties', '_featured_remain', '_activation_date', '_membership_interval', '_membership_interval_unit', '_associated_agent_id', 'noo_membership_price', 'noo_agent_email', '_noo_membership_interval', '_noo_membership_interval_unit', '_paid_listing', '_featured', 'agent_responsible', '_agent_id', '_item_id', '_total_price', '_currency_code', '_billing_type', '_payment_status', '_purchase_date', '_recurring_count', '_payment_type', '_txn_id', 'rp_agent_email', 'check_donate', '_price', '_stock_status', '_virtual', '_downloadable', '_sku', '_product_attributes', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_billing_package_id', '_billing_package_order_id', '_billing_package_agent_id', '_billing_submisson_prop_id', '_billing_submisson_order_id', '_billing_submisson_agent_id', '_billing_submisson_payment_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_membership_package', '_remaining_properties', '_featured_remain', '_activation_date', '_membership_interval', '_membership_interval_unit', '_associated_agent_id', 'noo_membership_price', 'noo_agent_email', '_noo_membership_interval', '_noo_membership_interval_unit', '_paid_listing', '_featured', 'agent_responsible', '_agent_id', '_item_id', '_total_price', '_currency_code', '_billing_type', '_payment_status', '_purchase_date', '_recurring_count', '_payment_type', '_txn_id', 'rp_agent_email', 'check_donate', '_price', '_stock_status', '_virtual', '_downloadable', '_sku', '_product_attributes', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_billing_package_id', '_billing_package_order_id', '_billing_package_agent_id', '_billing_submisson_prop_id', '_billing_submisson_order_id', '_billing_submisson_agent_id', '_billing_submisson_payment_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_membership_package', '_remaining_properties', '_featured_remain', '_activation_date', '_membership_interval', '_membership_interval_unit', '_associated_agent_id', 'noo_membership_price', 'noo_agent_email', '_noo_membership_interval', '_noo_membership_interval_unit', '_paid_listing', '_featured', 'agent_responsible', '_agent_id', '_item_id', '_total_price', '_currency_code', '_billing_type', '_payment_status', '_purchase_date', '_recurring_count', '_payment_type', '_txn_id', 'rp_agent_email', 'check_donate', '_price', '_stock_status', '_virtual', '_downloadable', '_sku', '_product_attributes', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_billing_package_id', '_billing_package_order_id', '_billing_package_agent_id', '_billing_submisson_prop_id', '_billing_submisson_order_id', '_billing_submisson_agent_id', '_billing_submisson_payment_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_membership_package', '_remaining_properties', '_featured_remain', '_activation_date', '_membership_interval', '_membership_interval_unit', '_associated_agent_id', 'noo_membership_price', 'noo_agent_email', '_noo_membership_interval', '_noo_membership_interval_unit', '_paid_listing', '_featured', 'agent_responsible', '_agent_id', '_item_id', '_total_price', '_currency_code', '_billing_type', '_payment_status', '_purchase_date', '_recurring_count', '_payment_type', '_txn_id', 'rp_agent_email', 'check_donate', '_price', '_stock_status', '_virtual', '_downloadable', '_sku', '_product_attributes', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_billing_package_id', '_billing_package_order_id', '_billing_package_agent_id', '_billing_submisson_prop_id', '_billing_submisson_order_id', '_billing_submisson_agent_id', '_billing_submisson_payment_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_unlimited';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_unlimited';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_unlimited';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_unlimited';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_price';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_interval';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_interval';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_interval';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_interval';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_interval_unit';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_interval_unit';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_interval_unit';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_interval_unit';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_properties_num';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_properties_num';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_properties_num';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_properties_num';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_properties_num_unlimited';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_properties_num_unlimited';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_properties_num_unlimited';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_properties_num_unlimited';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_featured_num';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_featured_num';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_featured_num';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_featured_num';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expire';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expire';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expire';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expire';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expire_unit';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expire_unit';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expire_unit';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expire_unit';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_package_highlighted';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_package_highlighted';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_package_highlighted';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_package_highlighted';

