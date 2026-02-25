-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_wysiwyg_cl_settings', 'acf_wysiwyg_cl_tracking_optin', 'acf_wysiwyg_cl__plugin_version', 'acf_wysiwyg_cl_plugin_version', 'acf_wysiwyg_cl_global_limit');

