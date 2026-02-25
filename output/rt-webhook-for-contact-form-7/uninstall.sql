-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rtwc_logs', '_rtwc_url', '_rtwc_method', '_rtwc_cf7_form_id', '_rtwc_cond_enabled', '_rtwc_cond_field', '_rtwc_cond_value', '_rtwc_cond_operator', '_rtwc_headers', '_rtwc_mapping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rtwc_logs', '_rtwc_url', '_rtwc_method', '_rtwc_cf7_form_id', '_rtwc_cond_enabled', '_rtwc_cond_field', '_rtwc_cond_value', '_rtwc_cond_operator', '_rtwc_headers', '_rtwc_mapping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rtwc_logs', '_rtwc_url', '_rtwc_method', '_rtwc_cf7_form_id', '_rtwc_cond_enabled', '_rtwc_cond_field', '_rtwc_cond_value', '_rtwc_cond_operator', '_rtwc_headers', '_rtwc_mapping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rtwc_logs', '_rtwc_url', '_rtwc_method', '_rtwc_cf7_form_id', '_rtwc_cond_enabled', '_rtwc_cond_field', '_rtwc_cond_value', '_rtwc_cond_operator', '_rtwc_headers', '_rtwc_mapping');

