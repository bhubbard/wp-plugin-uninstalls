-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aisp_cc_email_remove_data_on_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cc_email_1', 'cc_email_1_statuses', 'cc_email_2', 'cc_email_2_statuses');
DELETE FROM wp_usermeta WHERE meta_key IN ('cc_email_1', 'cc_email_1_statuses', 'cc_email_2', 'cc_email_2_statuses');
DELETE FROM wp_termmeta WHERE meta_key IN ('cc_email_1', 'cc_email_1_statuses', 'cc_email_2', 'cc_email_2_statuses');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cc_email_1', 'cc_email_1_statuses', 'cc_email_2', 'cc_email_2_statuses');

