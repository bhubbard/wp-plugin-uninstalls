-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('goolytics_web_property_id', 'goolytics_anonymize_ip', 'goolytics_usercentrics_support');

