-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xyz_credit_link', 'xyz_ips_installed_date', 'xyz_ips_dnt_shw_notice', 'xyz_ips_premium_version_ads', 'xyz_ips_credit_dismiss', 'xyz_ips_sort_order', 'xyz_ips_sort_field_name', 'xyz_ips_auto_insert', 'xyz_ips_auto_exception', 'xyz_ips_limit', 'xyz_ips_exception_email', 'xyz_ips_exec_in_editor', 'xyz_ips_free_version');

