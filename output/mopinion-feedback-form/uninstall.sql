-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mopinion_feedback_form_mopinionkey', 'mopinion_feedback_form_position');
DELETE FROM wp_options WHERE option_name LIKE '%_position';

