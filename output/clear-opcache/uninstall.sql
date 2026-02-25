-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bc_cocp_plugin_activated', 'bc_cocp_plugin_notice_shown');

