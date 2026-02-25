-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mptbd_general', 'mptbd_timecon', 'mptbd_review_pt', 'mptbd_activation_time', 'mptbd_plugin_version');

