-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gcstb_delete_db', 'gcstb_delete_db_confirm', 'gcstb_answer_type');

