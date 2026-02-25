-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('riaco_sqd_status', 'riaco_sqd_ruleset_type', 'riaco_sqd_discount_rules', 'riaco_sqd_rules_relationship', 'riaco_sqd_priority', 'riaco_sqd_conditions_rules', 'riaco_sqd_conditions_relationship');
DELETE FROM wp_usermeta WHERE meta_key IN ('riaco_sqd_status', 'riaco_sqd_ruleset_type', 'riaco_sqd_discount_rules', 'riaco_sqd_rules_relationship', 'riaco_sqd_priority', 'riaco_sqd_conditions_rules', 'riaco_sqd_conditions_relationship');
DELETE FROM wp_termmeta WHERE meta_key IN ('riaco_sqd_status', 'riaco_sqd_ruleset_type', 'riaco_sqd_discount_rules', 'riaco_sqd_rules_relationship', 'riaco_sqd_priority', 'riaco_sqd_conditions_rules', 'riaco_sqd_conditions_relationship');
DELETE FROM wp_commentmeta WHERE meta_key IN ('riaco_sqd_status', 'riaco_sqd_ruleset_type', 'riaco_sqd_discount_rules', 'riaco_sqd_rules_relationship', 'riaco_sqd_priority', 'riaco_sqd_conditions_rules', 'riaco_sqd_conditions_relationship');

