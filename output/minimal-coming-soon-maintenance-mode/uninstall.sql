-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('signals_csmm_meta', 'signals_csmm_options', 'csmm_pointers', 'csmm_error_msg', 'update_plugins', 'csmm_rate_hide', 'csmm_welcome_hide', 'csmm_olduser_hide', 'csmm_subscribe_hide');
DELETE FROM wp_options WHERE option_name LIKE 'wf_licensing_%';
DELETE FROM wp_options WHERE option_name LIKE 'signals_csmm_err_%';

