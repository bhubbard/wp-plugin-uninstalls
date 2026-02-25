-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xyz_credit_link', 'xyz_ihs_installed_date', 'xyz_ihs_dnt_shw_notice', 'xyz_ihs_premium_version_ads', 'xyz_ihs_credit_dismiss', 'xyz_ihs_sort_order', 'xyz_ihs_sort_field_name', 'xyz_ihs_dismiss', 'xyz_ihs_limit', 'xyz_ihs_exec_in_editor', 'xyz_ihs_free_version');

