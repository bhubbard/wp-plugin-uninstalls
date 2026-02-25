-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pv_custom_commission_rate', 'dokan_admin_percentage', 'dokan_admin_additional_fee', '_wcfmmp_commission_type', '_wcfmmp_commission', '_wcv_commission_type', '_wcv_commission_amount', '_wcv_commission_fee', '_wcv_commission_percent');
DELETE FROM wp_usermeta WHERE meta_key IN ('pv_custom_commission_rate', 'dokan_admin_percentage', 'dokan_admin_additional_fee', '_wcfmmp_commission_type', '_wcfmmp_commission', '_wcv_commission_type', '_wcv_commission_amount', '_wcv_commission_fee', '_wcv_commission_percent');
DELETE FROM wp_termmeta WHERE meta_key IN ('pv_custom_commission_rate', 'dokan_admin_percentage', 'dokan_admin_additional_fee', '_wcfmmp_commission_type', '_wcfmmp_commission', '_wcv_commission_type', '_wcv_commission_amount', '_wcv_commission_fee', '_wcv_commission_percent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pv_custom_commission_rate', 'dokan_admin_percentage', 'dokan_admin_additional_fee', '_wcfmmp_commission_type', '_wcfmmp_commission', '_wcv_commission_type', '_wcv_commission_amount', '_wcv_commission_fee', '_wcv_commission_percent');

