-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppl_show_deactivated', 'wppl_show_plugin_itself', 'wppl_show_plugin_description', 'wppl_show_plugin_version', 'wppl_show_total_headline', 'wppl_total_headline_text', 'wppl_total_headline');

