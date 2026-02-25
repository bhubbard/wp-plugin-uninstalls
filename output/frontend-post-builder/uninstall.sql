-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fpb_reg_form_fields', 'fronpobu_post_status', 'fronpobu_post_type', 'fronpobu_plugin_version');

