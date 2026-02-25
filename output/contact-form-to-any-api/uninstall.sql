-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_to_api_entry_hide', 'cf7_to_api_log_hide', 'cf7_to_api_before_mail_sent');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7anyapi_selected_form', 'cf7anyapi_form_field', 'cf7anyapi_base_url', 'cf7anyapi_basic_auth', 'cf7anyapi_bearer_auth', 'cf7anyapi_input_type', 'cf7anyapi_method', 'cf7anyapi_header_request', 'cf7anyapi_enable_condition', 'cf7anyapi_conditions', '_cf7api_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7anyapi_selected_form', 'cf7anyapi_form_field', 'cf7anyapi_base_url', 'cf7anyapi_basic_auth', 'cf7anyapi_bearer_auth', 'cf7anyapi_input_type', 'cf7anyapi_method', 'cf7anyapi_header_request', 'cf7anyapi_enable_condition', 'cf7anyapi_conditions', '_cf7api_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7anyapi_selected_form', 'cf7anyapi_form_field', 'cf7anyapi_base_url', 'cf7anyapi_basic_auth', 'cf7anyapi_bearer_auth', 'cf7anyapi_input_type', 'cf7anyapi_method', 'cf7anyapi_header_request', 'cf7anyapi_enable_condition', 'cf7anyapi_conditions', '_cf7api_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7anyapi_selected_form', 'cf7anyapi_form_field', 'cf7anyapi_base_url', 'cf7anyapi_basic_auth', 'cf7anyapi_bearer_auth', 'cf7anyapi_input_type', 'cf7anyapi_method', 'cf7anyapi_header_request', 'cf7anyapi_enable_condition', 'cf7anyapi_conditions', '_cf7api_status');

