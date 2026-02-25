#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CP_CFF_LOAD_SCRIPTS'
wp option delete 'CP_CALCULATEDFIELDSF_DEFAULT_template'
wp option delete 'CP_CALCULATEDFIELDSF_DEFAULT_display_submit_button'
wp option delete 'CP_CALCULATEDFIELDSF_DEFAULT_cv_enable_captcha'
wp option delete 'CP_CALCULATEDFIELDSF_DIRECT_FORM_ACCESS'
wp option delete 'CP_CALCULATEDFIELDSF_NONCE'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'cff-t-f'
wp option delete 'cff_ai_assistant_api_key'
wp option delete 'cff_ai_assistant_provider'
wp option delete 'cff_ai_assistant_model'
wp option delete 'cff_ai_form_generator_provider'
wp option delete 'cff_ai_form_generator_model'
wp option delete 'cff_ai_form_generator_api_key'
wp option delete 'CP_CALCULATEDFIELDSF_DISABLE_REVISIONS'
wp option delete 'CP_CALCULATEDFIELDSF_REVISIONS_IN_PREVIEW'
wp option delete 'cff-t-t'
wp option delete 'CP_CALCULATEDFIELDSF_FORMS_LIST_ORDERBY'
wp option delete 'calculated-fields-form-category'
wp option delete 'CP_CALCULATEDFIELDSF_USE_CACHE'
wp option delete 'CP_CALCULATEDFIELDSF_OPTIMIZATION_PLUGIN'
wp option delete 'CP_CALCULATEDFIELDSF_ENCODING_EMAIL'
wp option delete 'CP_CALCULATEDFIELDSF_EXCLUDE_CRAWLERS'
wp option delete 'CP_CALCULATEDFIELDSF_AMP'
wp option delete 'CP_CALCULATEDFIELDSF_RENDER_ONLY_VISIBLE'
wp option delete 'calculated-fields-search-form'
wp option delete 'calculated-fields-form-records-per-page'
wp option delete 'CP_CALCULATEDFIELDSF_DEFAULT_ENABLE_PAYPAL'
wp option delete 'CP_CALCULATEDFIELDSF_VERSION'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ROW_FORMAT'"
wp option delete 'cff-metaboxes-statuses'
wp option delete 'cff-t-d'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cff_ai_form_preview_%' OR option_name LIKE '_site_transient_cff_ai_form_preview_%'"
wp transient delete 'cff-video-tutorial'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

# Clear Cron Jobs
wp cron event delete 'cpcff_clean_transients'

