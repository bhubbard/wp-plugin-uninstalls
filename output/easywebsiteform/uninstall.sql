-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ewform_key', 'ewform_api_notice_show', 'ewform_hide_notice');

