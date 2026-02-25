-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('diyassist_api_checkbox', 'diyassist_publishkey', 'diyassist_securitytoken');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_diy_credit', '_diy_discount_type', 'diy_total', 'first_name', 'last_name', 'billing_phone', 'billing_address_1', 'diyassist_user', 'diy_msg', '_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_diy_credit', '_diy_discount_type', 'diy_total', 'first_name', 'last_name', 'billing_phone', 'billing_address_1', 'diyassist_user', 'diy_msg', '_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_diy_credit', '_diy_discount_type', 'diy_total', 'first_name', 'last_name', 'billing_phone', 'billing_address_1', 'diyassist_user', 'diy_msg', '_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_diy_credit', '_diy_discount_type', 'diy_total', 'first_name', 'last_name', 'billing_phone', 'billing_address_1', 'diyassist_user', 'diy_msg', '_customer_user');

