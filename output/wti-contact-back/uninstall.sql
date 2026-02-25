-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wti_contact_back_use_jquery', 'wti_contact_back_to_email', 'wti_contact_back');

