-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_writing_assistant__collapse_aiwa', 'aiwa-placeholders', 'aiwa_rating_box_closed', 'ai_writing_assistant__api-key', 'aiwa_notices', 'aiwa_notices_clicked_data', 'aiwa_wp_plugin_activation_date', 'aiwa_wp_plugin_dismissal_date', 'aiwa_wp_plugin_notice_closed', 'aiwa_activation_check', 'ai_writing_assistant__user_roles');
DELETE FROM wp_options WHERE option_name LIKE '%image_experiments';
DELETE FROM wp_options WHERE option_name LIKE '%new_images_with_existing';
DELETE FROM wp_options WHERE option_name LIKE '%number_of_image';
DELETE FROM wp_options WHERE option_name LIKE '%ai-image-size';
DELETE FROM wp_options WHERE option_name LIKE '%api-key';
DELETE FROM wp_options WHERE option_name LIKE '%previously_failed';
DELETE FROM wp_options WHERE option_name LIKE '%titles-count';
DELETE FROM wp_options WHERE option_name LIKE '%generate-title';
DELETE FROM wp_options WHERE option_name LIKE '%ai-content-structure';
DELETE FROM wp_options WHERE option_name LIKE '%select-topics-before-generate';
DELETE FROM wp_options WHERE option_name LIKE '%topics-count';
DELETE FROM wp_options WHERE option_name LIKE '%pros-and-cons-count';
DELETE FROM wp_options WHERE option_name LIKE '%list-items-count';
DELETE FROM wp_options WHERE option_name LIKE '%faq-items-count';
DELETE FROM wp_options WHERE option_name LIKE '%article-paragraphs-count';
DELETE FROM wp_options WHERE option_name LIKE '%how_many_minutes';
DELETE FROM wp_options WHERE option_name LIKE '%first-person-name';
DELETE FROM wp_options WHERE option_name LIKE '%second-person-name';
DELETE FROM wp_options WHERE option_name LIKE '%temperature';
DELETE FROM wp_options WHERE option_name LIKE '%max-tokens';
DELETE FROM wp_options WHERE option_name LIKE '%top-p';
DELETE FROM wp_options WHERE option_name LIKE '%best-of';
DELETE FROM wp_options WHERE option_name LIKE '%frequency-penalty';
DELETE FROM wp_options WHERE option_name LIKE '%presence-penalty';
DELETE FROM wp_options WHERE option_name LIKE '%add-call-to-action';
DELETE FROM wp_options WHERE option_name LIKE '%call-to-action-url';
DELETE FROM wp_options WHERE option_name LIKE '%call-to-action-position';
DELETE FROM wp_options WHERE option_name LIKE '%add-introduction';
DELETE FROM wp_options WHERE option_name LIKE '%add-introduction-text';
DELETE FROM wp_options WHERE option_name LIKE '%introduction-size';
DELETE FROM wp_options WHERE option_name LIKE '%add-conclusion';
DELETE FROM wp_options WHERE option_name LIKE '%add-conclusion-text';
DELETE FROM wp_options WHERE option_name LIKE '%conclusion-size';
DELETE FROM wp_options WHERE option_name LIKE '%add-excerpt';
DELETE FROM wp_options WHERE option_name LIKE '%excerpt_number_of_words';
DELETE FROM wp_options WHERE option_name LIKE '%content-length';
DELETE FROM wp_options WHERE option_name LIKE '%auto-generate-image';
DELETE FROM wp_options WHERE option_name LIKE '%aiwa_language_text';
DELETE FROM wp_options WHERE option_name LIKE '%select-title-before-generate';
DELETE FROM wp_options WHERE option_name LIKE '%how-many-titles-show-first';
DELETE FROM wp_options WHERE option_name LIKE '%user_roles';
DELETE FROM wp_options WHERE option_name LIKE '%post_types';
DELETE FROM wp_options WHERE option_name LIKE '%page_builders';
DELETE FROM wp_options WHERE option_name LIKE '%collapse_aiwa';
DELETE FROM wp_options WHERE option_name LIKE '%aiwa-topics-tag';
DELETE FROM wp_options WHERE option_name LIKE '%writing-tone';
DELETE FROM wp_options WHERE option_name LIKE '%writing-style';
DELETE FROM wp_options WHERE option_name LIKE '%aiwa-language';
DELETE FROM wp_options WHERE option_name LIKE '%_image';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

