-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_dcrm_admin_email', 'mo_dcrm_admin_password', 'mo_dcrm_admin_customer_key', 'mo_dcrm_admin_api_key', 'mo_dcrm_admin_phone');

