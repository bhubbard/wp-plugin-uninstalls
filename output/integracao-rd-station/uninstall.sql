-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rdsm_tracking_code', 'rdsm_general_settings', 'rdsm_access_token', 'rdsm_refresh_token', 'rdsm_woocommerce_settings', 'rdsm_base_migrated', 'rdsm_public_token', 'rdsm_private_token', 'rdscript_all_head', 'rdscript_all_body', 'rdsm_integrations_log_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('form_id', 'form_identifier', 'token_rdstation', 'gf_mapped_fields', 'use_post_title', '_rdscriptcontentinhead', '_rdscriptcontentinfooter', '_rdscriptcontenttop', '_rdscriptcontentbottom');
DELETE FROM wp_usermeta WHERE meta_key IN ('form_id', 'form_identifier', 'token_rdstation', 'gf_mapped_fields', 'use_post_title', '_rdscriptcontentinhead', '_rdscriptcontentinfooter', '_rdscriptcontenttop', '_rdscriptcontentbottom');
DELETE FROM wp_termmeta WHERE meta_key IN ('form_id', 'form_identifier', 'token_rdstation', 'gf_mapped_fields', 'use_post_title', '_rdscriptcontentinhead', '_rdscriptcontentinfooter', '_rdscriptcontenttop', '_rdscriptcontentbottom');
DELETE FROM wp_commentmeta WHERE meta_key IN ('form_id', 'form_identifier', 'token_rdstation', 'gf_mapped_fields', 'use_post_title', '_rdscriptcontentinhead', '_rdscriptcontentinfooter', '_rdscriptcontenttop', '_rdscriptcontentbottom');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7_mapped_fields_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7_mapped_fields_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7_mapped_fields_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7_mapped_fields_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gf_mapped_fields_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gf_mapped_fields_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gf_mapped_fields_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gf_mapped_fields_%';

