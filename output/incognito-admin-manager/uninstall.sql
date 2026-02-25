-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('incognito_cls_options', 'incognito_ats_settings', 'incognito_restrictions');

