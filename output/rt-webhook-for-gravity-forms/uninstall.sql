-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rtwcgf_logs', '_rtwcgf_url', '_rtwcgf_method', '_rtwcgf_gf_form_id', '_rtwcgf_cond_enabled', '_rtwcgf_cond_field', '_rtwcgf_cond_value', '_rtwcgf_cond_operator', '_rtwcgf_headers', '_rtwcgf_mapping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rtwcgf_logs', '_rtwcgf_url', '_rtwcgf_method', '_rtwcgf_gf_form_id', '_rtwcgf_cond_enabled', '_rtwcgf_cond_field', '_rtwcgf_cond_value', '_rtwcgf_cond_operator', '_rtwcgf_headers', '_rtwcgf_mapping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rtwcgf_logs', '_rtwcgf_url', '_rtwcgf_method', '_rtwcgf_gf_form_id', '_rtwcgf_cond_enabled', '_rtwcgf_cond_field', '_rtwcgf_cond_value', '_rtwcgf_cond_operator', '_rtwcgf_headers', '_rtwcgf_mapping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rtwcgf_logs', '_rtwcgf_url', '_rtwcgf_method', '_rtwcgf_gf_form_id', '_rtwcgf_cond_enabled', '_rtwcgf_cond_field', '_rtwcgf_cond_value', '_rtwcgf_cond_operator', '_rtwcgf_headers', '_rtwcgf_mapping');

