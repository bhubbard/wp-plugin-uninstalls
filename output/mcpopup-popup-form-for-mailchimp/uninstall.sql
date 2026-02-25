-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcpup_settings_reset', 'mcpup_c_time', 'mcpup_h_title', 'mcpup_para', 'mcpup_promise', 'mcpup_fname_text', 'mcpup_lname_text', 'mcpup_email_text', 'mcpup_submit_text', 'mcpup_fname', 'mcpup_lname', 'mcpup_e_users', 'mcpup_api_key', 'mcpup_list_id');

