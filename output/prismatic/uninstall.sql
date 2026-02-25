-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prismatic_options_general', 'prismatic_options_prism', 'prismatic_options_highlight', 'prismatic_options_plain', 'prismatic_options_advanced', 'prismatic-dismiss-notice');

