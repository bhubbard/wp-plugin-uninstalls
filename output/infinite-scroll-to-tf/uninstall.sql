-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ob_inf_scr_tf_load_text', 'ob_inf_scr_tf_done_text');

