-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easytab_debug_log', 'easytab_ai', 'easytab_settings', 'easytab_ai_models', 'easytab_pro_third_parties_tabs', 'easytab_chat_gpt_ai_output_preset', 'easytab_claude_ai_output_preset', 'easytab_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easytab_additional_information_tab', 'easytab_description_tab');
DELETE FROM wp_usermeta WHERE meta_key IN ('easytab_additional_information_tab', 'easytab_description_tab');
DELETE FROM wp_termmeta WHERE meta_key IN ('easytab_additional_information_tab', 'easytab_description_tab');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easytab_additional_information_tab', 'easytab_description_tab');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tab';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tab';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tab';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tab';

