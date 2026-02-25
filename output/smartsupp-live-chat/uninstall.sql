-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartsupp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_country', 'billing_city', '_money_spent', '_order_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_country', 'billing_city', '_money_spent', '_order_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_country', 'billing_city', '_money_spent', '_order_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_country', 'billing_city', '_money_spent', '_order_count');

