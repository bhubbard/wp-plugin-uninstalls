-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gigago_partner_endpoint_url', 'gigago_partner_client_id', 'gigago_partner_brand_name', 'gigago_partner_access_code', 'gigago_partner_secure_secret', 'gigago_partner_email_template_1_description', 'gigago_partner_email_template_1_custom');
DELETE FROM wp_options WHERE option_name LIKE '%_custom';
DELETE FROM wp_options WHERE option_name LIKE '%_subject';
DELETE FROM wp_options WHERE option_name LIKE '%_content';
DELETE FROM wp_options WHERE option_name LIKE '%_signature';
DELETE FROM wp_options WHERE option_name LIKE '%_bcc';
DELETE FROM wp_options WHERE option_name LIKE '%_description';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ggg_plan_id', '_ggg_plan_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ggg_plan_id', '_ggg_plan_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ggg_plan_id', '_ggg_plan_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ggg_plan_id', '_ggg_plan_name');

