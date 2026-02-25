-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dsfse_default_rules_created', 'dsfse_plugin_welcome_screen_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dsfse_end_date', 'dsfse_rule_status', 'dsfse_target_page', 'dsfse_start_date', 'dsfse_is_default_rule', 'dsfse_occasion');
DELETE FROM wp_usermeta WHERE meta_key IN ('dsfse_end_date', 'dsfse_rule_status', 'dsfse_target_page', 'dsfse_start_date', 'dsfse_is_default_rule', 'dsfse_occasion');
DELETE FROM wp_termmeta WHERE meta_key IN ('dsfse_end_date', 'dsfse_rule_status', 'dsfse_target_page', 'dsfse_start_date', 'dsfse_is_default_rule', 'dsfse_occasion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dsfse_end_date', 'dsfse_rule_status', 'dsfse_target_page', 'dsfse_start_date', 'dsfse_is_default_rule', 'dsfse_occasion');

