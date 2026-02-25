-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgee_append_options', 'pgee_auto_options', 'pgee_replace_options', 'pgee_options', 'links_updated_date_format');

