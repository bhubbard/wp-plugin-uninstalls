-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('riskfeedback');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('risklist_objective_meta', 'risklist_risk_info', 'risklist_risk_meta', 'process_data', 'process_freq', 'risklist_action_meta', 'risklist_action_date', 'metric_data', 'risklist_metric_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('risklist_objective_meta', 'risklist_risk_info', 'risklist_risk_meta', 'process_data', 'process_freq', 'risklist_action_meta', 'risklist_action_date', 'metric_data', 'risklist_metric_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('risklist_objective_meta', 'risklist_risk_info', 'risklist_risk_meta', 'process_data', 'process_freq', 'risklist_action_meta', 'risklist_action_date', 'metric_data', 'risklist_metric_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('risklist_objective_meta', 'risklist_risk_info', 'risklist_risk_meta', 'process_data', 'process_freq', 'risklist_action_meta', 'risklist_action_date', 'metric_data', 'risklist_metric_meta');

