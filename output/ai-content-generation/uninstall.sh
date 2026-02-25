#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wpwand_pro_tala_status'
wp option delete 'wpwand_api_key'
wp option delete 'wpwand_claude_api_key'
wp option delete 'wpwand_deepseek_api_key'
wp option delete 'wpwand_openrouter_api_key'
wp option delete 'wpwand_model'
wp option delete 'wpwand_language'
wp option delete 'toggler_position'
wp option delete 'wpwand_temperature'
wp option delete 'wpwand_frequency'
wp option delete 'wpwand_max_tokens'
wp option delete 'wpwand_presence_penalty'
wp option delete 'wpwand_hide_ai_bar_gutenberg'
wp option delete 'wpwand_data'
wp option delete 'wpwand_custom_data'
wp option delete 'wpwand_pro_activated'
wp option delete 'wpwand_busines_details'
wp option delete 'wpwand_targated_customer'
wp option delete 'wpwand_promo_notice_dismiss'
wp option delete 'wpwand_pgc_total_bulk_generated'
wp option delete 'wpwand_pgc_limit'
wp option delete 'wdelmtr_model'
wp option delete 'wdelmtr_temperature'
wp option delete 'wdelmtr_max_tokens'
wp option delete 'wdelmtr_frequency'
wp option delete 'wdelmtr_presence_penalty'
wp option delete 'wpwand_activation_redirect'

# Delete Transients
wp transient delete 'wpwand_data_transient'
wp transient delete 'wpwand_pgc_limit_expiration'
wp transient delete 'wpwand_openai_models'
wp transient delete 'wpwand_claude_models'
wp transient delete 'wpwand_openrouter_model_list'

# Clear Cron Jobs

