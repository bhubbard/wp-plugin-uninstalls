-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qhub_default_question_output', 'qhub_default_before_question', 'qhub_default_after_question', 'qhub_user_url', 'qhub_user_id', 'qhub_user_password', 'qhub_user_apikey', 'qhub_default_noquestion_txt', 'qhub_default_title_txt', 'qhub_default_showme', 'qhub_default_showby', 'qhub_default_api_order');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qhub_numbertoshow_value', 'qhub_output_value', 'qhub_tags_value', 'qhub_displayanswered_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('qhub_numbertoshow_value', 'qhub_output_value', 'qhub_tags_value', 'qhub_displayanswered_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('qhub_numbertoshow_value', 'qhub_output_value', 'qhub_tags_value', 'qhub_displayanswered_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qhub_numbertoshow_value', 'qhub_output_value', 'qhub_tags_value', 'qhub_displayanswered_value');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_value';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_value';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_value';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_value';

