-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbrdify_adminbar_logo', 'dbrdify_installBanner', 'dbrdify_installDate', 'dbrdify_usedNotice', 'dbrdify_prioritise');

