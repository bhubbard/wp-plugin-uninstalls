-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dmuk_bo_last_post_number', 'dmuk_bo_last_action_message', 'dmuk_dmuk_bo_last_action_message ', 'dmuk_dmuk_bo_last_action_status ', 'dmuk_bo_last_action_status', 'dmuk_bo_last_action_count', 'dmuk_bo_feedback');

