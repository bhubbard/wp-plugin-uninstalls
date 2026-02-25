-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiko_developer_lite_path', 'aiko_developer_openai_api_key', 'aiko_developer_ai_selection', 'aiko_developer_openai_model', 'aiko_developer_temperature', 'aiko_developer_activated', 'aiko_developer_new_fields_updated', 'aiko_developer_api_key', 'aiko_developer_model', 'aiko_developer_consultant_model', 'aiko_developer_consultant_openai_model', 'aiko_developer_reviewer_model', 'aiko_developer_reviewer_openai_model', 'aiko_developer_consultant_temperature');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_outdated_flag', '_functional_requirements', '_old_functional_requirements', '_improvements', '_code_not_generated', '_php_output', '_js_output', '_css_output', '_generation', '_post_slug', '_can_generate', '_flag', '_aiko_developer_rephrased_flag', '_used_model');
DELETE FROM wp_usermeta WHERE meta_key IN ('_outdated_flag', '_functional_requirements', '_old_functional_requirements', '_improvements', '_code_not_generated', '_php_output', '_js_output', '_css_output', '_generation', '_post_slug', '_can_generate', '_flag', '_aiko_developer_rephrased_flag', '_used_model');
DELETE FROM wp_termmeta WHERE meta_key IN ('_outdated_flag', '_functional_requirements', '_old_functional_requirements', '_improvements', '_code_not_generated', '_php_output', '_js_output', '_css_output', '_generation', '_post_slug', '_can_generate', '_flag', '_aiko_developer_rephrased_flag', '_used_model');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_outdated_flag', '_functional_requirements', '_old_functional_requirements', '_improvements', '_code_not_generated', '_php_output', '_js_output', '_css_output', '_generation', '_post_slug', '_can_generate', '_flag', '_aiko_developer_rephrased_flag', '_used_model');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_output';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_output';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_output';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_output';

