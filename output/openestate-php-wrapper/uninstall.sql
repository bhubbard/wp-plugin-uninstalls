-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openestate_wrapper_script_path', 'openestate_wrapper_script_url');

