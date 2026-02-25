-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BusinessMonitor_options', 'BusinessMonitor_field_answerAnonymous', 'BusinessMonitor_field_anonymousText');

