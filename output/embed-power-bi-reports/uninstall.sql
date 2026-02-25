-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_epbr_admin_email', 'mo_epbr_admin_password', 'mo_epbr_registration_status', 'mo_epbr_verify_customer', 'mo_epbr_add_sso_button_wp', 'mo_epbr_admin_phone', 'mo_epbr_admin_customer_key', 'mo_epbr_add_filters_pane', 'mo_epbr_add_page_navigation', 'mo_epbr_notice_message', 'mo_epbr_power_bi_url', 'mo_epbr_admin_api_key', 'mo_epbr_customer_token');

