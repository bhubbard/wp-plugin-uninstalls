-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows', 'rfr2b_activate', 'rfr2b_name', 'rfr2b_email', 'wsa_alert_msg');

