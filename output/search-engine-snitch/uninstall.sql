-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('searchenginesnitch_email', 'searchenginesnitch_frequency', 'searchenginesnitch_activation_notice');

