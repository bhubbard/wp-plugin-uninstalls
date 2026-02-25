-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tdlm_titlecase_lowercase', 'tdlm_titlecase_uppercase');

