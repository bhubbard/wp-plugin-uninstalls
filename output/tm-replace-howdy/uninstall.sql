-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tm_replace_howdy_ver', 'tm_replace_howdy_all_languages', 'tm_replace_howdy_mode', 'tm_replace_howdy_values', 'tm_replace_howdy_save', 'techm_replace_howdy', 'techm_replace_howdy_values');

