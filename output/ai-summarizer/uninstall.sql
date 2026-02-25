-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_summarizer_aws_access_key', 'ai_summarizer_aws_secret_key', 'ai_summarizer_aws_region', 'ai_summarizer_bedrock_model_id', 'ai_summarizer_summary_speed', 'ai_summarizer_summary_length', 'ai_summarizer_widget_visibility', 'ai_summarizer_post_types', 'ai_summarizer_key', 'ai_summarizer_configuration', 'ai_summarizer_model_type', 'ai_summarizer_widget_colour', 'ai_summarizer_widget_text', 'ai_summarizer_widget_text_two', 'ai_summarizer_widget_position', 'ai_summarizer_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ai_summary', 'summary_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('ai_summary', 'summary_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('ai_summary', 'summary_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ai_summary', 'summary_status');

