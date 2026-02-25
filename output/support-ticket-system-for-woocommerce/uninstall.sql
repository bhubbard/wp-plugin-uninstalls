-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stswpro_tickets_table_db_version', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%renameOrderButtonLink';
DELETE FROM wp_options WHERE option_name LIKE '%renameAccountTabLink';
DELETE FROM wp_options WHERE option_name LIKE '%hideClosed';
DELETE FROM wp_options WHERE option_name LIKE '%textforResponseSave';
DELETE FROM wp_options WHERE option_name LIKE '%textforTicketSave';
DELETE FROM wp_options WHERE option_name LIKE '%mailToADmin';
DELETE FROM wp_options WHERE option_name LIKE '%AdminEmailAddress';
DELETE FROM wp_options WHERE option_name LIKE '%mailToCustomer';
DELETE FROM wp_options WHERE option_name LIKE '%mailIt_subjectToCust';
DELETE FROM wp_options WHERE option_name LIKE '%mailIt_contentToCust';
DELETE FROM wp_options WHERE option_name LIKE '%_notification';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('STSWooCommerceProticketuser');
DELETE FROM wp_usermeta WHERE meta_key IN ('STSWooCommerceProticketuser');
DELETE FROM wp_termmeta WHERE meta_key IN ('STSWooCommerceProticketuser');
DELETE FROM wp_commentmeta WHERE meta_key IN ('STSWooCommerceProticketuser');

