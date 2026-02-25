-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('salesforce2', 'email_sender', 'salesforce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('salesforce_lead_submitted', 'author_first_name', 'author_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('salesforce_lead_submitted', 'author_first_name', 'author_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('salesforce_lead_submitted', 'author_first_name', 'author_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('salesforce_lead_submitted', 'author_first_name', 'author_last_name');

