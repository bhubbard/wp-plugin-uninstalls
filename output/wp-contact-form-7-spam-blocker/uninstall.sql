-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpcf7_block_email_list', '_wpcf7_block_email_domain', '_wpcf7_block_top_domain', '_wpcf7_protected_fields', '_wpcf7_block_words', '_wpcf7_block_shortlinks', '_wpcf7_block_logging', '_wpcf7_block_log_filename', '_wpcf7_block_email_error_msg', '_wpcf7_request_log_analyze');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpcf7_block_email_list', '_wpcf7_block_email_domain', '_wpcf7_block_top_domain', '_wpcf7_protected_fields', '_wpcf7_block_words', '_wpcf7_block_shortlinks', '_wpcf7_block_logging', '_wpcf7_block_log_filename', '_wpcf7_block_email_error_msg', '_wpcf7_request_log_analyze');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpcf7_block_email_list', '_wpcf7_block_email_domain', '_wpcf7_block_top_domain', '_wpcf7_protected_fields', '_wpcf7_block_words', '_wpcf7_block_shortlinks', '_wpcf7_block_logging', '_wpcf7_block_log_filename', '_wpcf7_block_email_error_msg', '_wpcf7_request_log_analyze');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpcf7_block_email_list', '_wpcf7_block_email_domain', '_wpcf7_block_top_domain', '_wpcf7_protected_fields', '_wpcf7_block_words', '_wpcf7_block_shortlinks', '_wpcf7_block_logging', '_wpcf7_block_log_filename', '_wpcf7_block_email_error_msg', '_wpcf7_request_log_analyze');

