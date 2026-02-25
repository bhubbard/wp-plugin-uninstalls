-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freecontactformdotcom_email', 'freecontactformdotcom_question', 'freecontactformdotcom_answer', 'freecontactformdotcom_thankyou', 'freecontactformdotcom_linkback');

