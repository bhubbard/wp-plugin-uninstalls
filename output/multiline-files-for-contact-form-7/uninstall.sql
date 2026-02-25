-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mfcf7-zl-admin-do-not-show-pro-tip', 'mfcf7-zl-admin-do-not-show-rating-tip', 'mfcf7_zl_plugin_deactivate_request', 'mfcf7-zl-admin-do-not-show-pro-tip', 'mfcf7-zl-admin-do-not-show-rating-tip', 'mfcf7_zl_deactivation_error');

