-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpt_ys_master_act', 'wpt_ys_num_days', 'wpt_ys_display_user', 'wpt_ys_display_hidden');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

