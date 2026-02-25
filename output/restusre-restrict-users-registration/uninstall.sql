-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('restusre_general', 'restusre_api', 'restusre_domain_blacklist', 'restusre_email_blacklist');

