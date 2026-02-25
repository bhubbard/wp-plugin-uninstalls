-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ceewp_rtm_custom_rules', 'ceewp_rtm_replace_mode');

