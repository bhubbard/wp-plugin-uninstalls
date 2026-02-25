-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qav_logoimg', 'qav_question', 'qav_answer_yes', 'qav_answer_no', 'qav_not18', 'qav_remember');

