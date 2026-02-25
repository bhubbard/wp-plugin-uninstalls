-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgabst_option_text', 'sgabst_option_chk', 'sgabst-admin-notice-activation');

