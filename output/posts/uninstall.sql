-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nxt_post_option_template_select', 'nxt_post_plugin_enable');

