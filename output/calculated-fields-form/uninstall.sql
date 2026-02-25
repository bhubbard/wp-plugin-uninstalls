-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CP_CFF_LOAD_SCRIPTS', 'CP_CALCULATEDFIELDSF_DEFAULT_template', 'CP_CALCULATEDFIELDSF_DEFAULT_display_submit_button', 'CP_CALCULATEDFIELDSF_DEFAULT_cv_enable_captcha', 'CP_CALCULATEDFIELDSF_DIRECT_FORM_ACCESS', 'CP_CALCULATEDFIELDSF_NONCE', 'cff-t-f', 'cff_ai_assistant_api_key', 'cff_ai_assistant_provider', 'cff_ai_assistant_model', 'cff_ai_form_generator_provider', 'cff_ai_form_generator_model', 'cff_ai_form_generator_api_key', 'CP_CALCULATEDFIELDSF_DISABLE_REVISIONS', 'CP_CALCULATEDFIELDSF_REVISIONS_IN_PREVIEW', 'cff-t-t', 'CP_CALCULATEDFIELDSF_FORMS_LIST_ORDERBY', 'calculated-fields-form-category', 'CP_CALCULATEDFIELDSF_USE_CACHE', 'CP_CALCULATEDFIELDSF_OPTIMIZATION_PLUGIN', 'CP_CALCULATEDFIELDSF_ENCODING_EMAIL', 'CP_CALCULATEDFIELDSF_EXCLUDE_CRAWLERS', 'CP_CALCULATEDFIELDSF_AMP', 'CP_CALCULATEDFIELDSF_RENDER_ONLY_VISIBLE', 'calculated-fields-search-form', 'calculated-fields-form-records-per-page', 'CP_CALCULATEDFIELDSF_DEFAULT_ENABLE_PAYPAL', 'CP_CALCULATEDFIELDSF_VERSION', 'cff-metaboxes-statuses', 'cff-t-d', 'cff-video-tutorial');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE '%_ROW_FORMAT';
DELETE FROM wp_options WHERE option_name LIKE 'cff_ai_form_preview_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

