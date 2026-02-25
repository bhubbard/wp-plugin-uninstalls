-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ft_smfw_alert_stock_min');
DELETE FROM wp_options WHERE option_name LIKE '%show_go_pro_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ft_smfw_supplier', 'ft_smfw_supplier_price', 'ft_smfw_supplier_packaging', 'ft_smfw_supplier_part_number', 'ft_smfw_business_name', 'ft_smfw_website', 'ft_smfw_email', 'ft_smfw_phone', 'ft_smfw_direct_name', 'ft_smfw_direct_email', 'ft_smfw_direct_phone', 'ft_smfw_street', 'ft_smfw_zipcode', 'ft_smfw_city', 'ft_smfw_state', 'ft_smfw_country', 'ft_smfw_delivery_time', 'ft_smfw_free_delivery', 'ft_smfw_comment');
DELETE FROM wp_usermeta WHERE meta_key IN ('ft_smfw_supplier', 'ft_smfw_supplier_price', 'ft_smfw_supplier_packaging', 'ft_smfw_supplier_part_number', 'ft_smfw_business_name', 'ft_smfw_website', 'ft_smfw_email', 'ft_smfw_phone', 'ft_smfw_direct_name', 'ft_smfw_direct_email', 'ft_smfw_direct_phone', 'ft_smfw_street', 'ft_smfw_zipcode', 'ft_smfw_city', 'ft_smfw_state', 'ft_smfw_country', 'ft_smfw_delivery_time', 'ft_smfw_free_delivery', 'ft_smfw_comment');
DELETE FROM wp_termmeta WHERE meta_key IN ('ft_smfw_supplier', 'ft_smfw_supplier_price', 'ft_smfw_supplier_packaging', 'ft_smfw_supplier_part_number', 'ft_smfw_business_name', 'ft_smfw_website', 'ft_smfw_email', 'ft_smfw_phone', 'ft_smfw_direct_name', 'ft_smfw_direct_email', 'ft_smfw_direct_phone', 'ft_smfw_street', 'ft_smfw_zipcode', 'ft_smfw_city', 'ft_smfw_state', 'ft_smfw_country', 'ft_smfw_delivery_time', 'ft_smfw_free_delivery', 'ft_smfw_comment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ft_smfw_supplier', 'ft_smfw_supplier_price', 'ft_smfw_supplier_packaging', 'ft_smfw_supplier_part_number', 'ft_smfw_business_name', 'ft_smfw_website', 'ft_smfw_email', 'ft_smfw_phone', 'ft_smfw_direct_name', 'ft_smfw_direct_email', 'ft_smfw_direct_phone', 'ft_smfw_street', 'ft_smfw_zipcode', 'ft_smfw_city', 'ft_smfw_state', 'ft_smfw_country', 'ft_smfw_delivery_time', 'ft_smfw_free_delivery', 'ft_smfw_comment');

