-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WpLeadBuilderProActivatedPlugin', 'Sync_value_on_off');

