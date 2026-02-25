-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eazycfc_label_text', 'eazycfc_honeypot', 'eazycfc_easy', 'eazycfc_disable_comment_form');

