-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkbrco_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('linkbrco_issue_type', 'linkbrco_page_url', 'linkbrco_message', 'linkbrco_read', 'linkbrco_reporter_email', 'linkbrco_user_agent', 'linkbrco_ip_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('linkbrco_issue_type', 'linkbrco_page_url', 'linkbrco_message', 'linkbrco_read', 'linkbrco_reporter_email', 'linkbrco_user_agent', 'linkbrco_ip_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('linkbrco_issue_type', 'linkbrco_page_url', 'linkbrco_message', 'linkbrco_read', 'linkbrco_reporter_email', 'linkbrco_user_agent', 'linkbrco_ip_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('linkbrco_issue_type', 'linkbrco_page_url', 'linkbrco_message', 'linkbrco_read', 'linkbrco_reporter_email', 'linkbrco_user_agent', 'linkbrco_ip_hash');

