-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xyz_credit_link', 'xyz_wpf_installed_date', 'xyz_wfp_dnt_shw_notice', 'xyz_wpf_page_size', 'xyz_wpf_credit_dismiss', 'xyz_wpf_free_version');

