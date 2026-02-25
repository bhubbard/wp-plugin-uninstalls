-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xhtml_easy_validator_method');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_easy_validatore_result', '_easy_validatore_Errors', '_easy_validatore_Warnings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_easy_validatore_result', '_easy_validatore_Errors', '_easy_validatore_Warnings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_easy_validatore_result', '_easy_validatore_Errors', '_easy_validatore_Warnings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_easy_validatore_result', '_easy_validatore_Errors', '_easy_validatore_Warnings');

