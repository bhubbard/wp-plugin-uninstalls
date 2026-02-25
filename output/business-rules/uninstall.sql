-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rules_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rule_actions', 'rule_conditions', 'rules_variables', 'rule_trigger', 'rule_trigger_options', 'rule_log');
DELETE FROM wp_usermeta WHERE meta_key IN ('rule_actions', 'rule_conditions', 'rules_variables', 'rule_trigger', 'rule_trigger_options', 'rule_log');
DELETE FROM wp_termmeta WHERE meta_key IN ('rule_actions', 'rule_conditions', 'rules_variables', 'rule_trigger', 'rule_trigger_options', 'rule_log');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rule_actions', 'rule_conditions', 'rules_variables', 'rule_trigger', 'rule_trigger_options', 'rule_log');

