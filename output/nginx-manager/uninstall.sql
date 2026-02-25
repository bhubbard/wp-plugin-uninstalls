-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nginxm_global_options', 'nginxm_options', 'nginxm_init_check');

