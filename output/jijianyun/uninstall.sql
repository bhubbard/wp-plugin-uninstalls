-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jijianyun_options', 'jijianyun_corp_id', 'jijianyun_api_secret', 'jijianyun_company_name', 'jijianyun_company_identification', 'jijianyun_user_name', 'jijianyun_user_identify', 'jijianyun_email', 'jijianyun_mobile', 'jijianyun_cfg_id');

