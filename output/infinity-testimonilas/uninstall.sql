-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ifst_group_name', '_ifst_designation', '_ifst_company', '_ifst_company_url', '_ifst_stars', '_ifst_img_id', '_ifst_company_logo_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ifst_group_name', '_ifst_designation', '_ifst_company', '_ifst_company_url', '_ifst_stars', '_ifst_img_id', '_ifst_company_logo_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ifst_group_name', '_ifst_designation', '_ifst_company', '_ifst_company_url', '_ifst_stars', '_ifst_img_id', '_ifst_company_logo_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ifst_group_name', '_ifst_designation', '_ifst_company', '_ifst_company_url', '_ifst_stars', '_ifst_img_id', '_ifst_company_logo_id');

