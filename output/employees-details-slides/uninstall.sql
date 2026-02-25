-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mds_employee_name', '_mds_employee_designation', '_mds_employee_age', '_mds_employee_degree', '_mds_employee_skills', '_mds_employee_downtown', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mds_employee_name', '_mds_employee_designation', '_mds_employee_age', '_mds_employee_degree', '_mds_employee_skills', '_mds_employee_downtown', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mds_employee_name', '_mds_employee_designation', '_mds_employee_age', '_mds_employee_degree', '_mds_employee_skills', '_mds_employee_downtown', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mds_employee_name', '_mds_employee_designation', '_mds_employee_age', '_mds_employee_degree', '_mds_employee_skills', '_mds_employee_downtown', '_wp_page_template');

