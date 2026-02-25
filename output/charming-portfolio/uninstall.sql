-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CHARMING_PORTFOLIO_v2', 'CHARMING_PORTFOLIO_additional_v2', 'CHARMING_PORTFOLIO_data', 'CHARMING_PORTFOLIO_additional_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('enquiry_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('enquiry_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('enquiry_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('enquiry_email');

