-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppd_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wppd_donation_amount', 'wppd_project_mailchimp_list_id', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wppd_donation_amount', 'wppd_project_mailchimp_list_id', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wppd_donation_amount', 'wppd_project_mailchimp_list_id', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wppd_donation_amount', 'wppd_project_mailchimp_list_id', '_wp_page_template');

