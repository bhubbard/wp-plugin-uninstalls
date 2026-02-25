-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intefocf_textdrip_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'intefocf_cf7form_campaign_%';
DELETE FROM wp_options WHERE option_name LIKE 'intefocf_cf7form_%';

