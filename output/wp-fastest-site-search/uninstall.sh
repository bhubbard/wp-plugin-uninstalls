#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EXPERTREC_MOCK_API'
wp option delete 'expertrec_debug'
wp option delete 'expertrec_options'
wp option delete 'expertrec_engine'
wp option delete 'expertrec_indexing_status'
wp option delete 'EXPERTREC_DB_OPTIONS_BRAND_TAXONOMY'
wp option delete 'expertrec_stop_indexing'
wp option delete 'expertrec_index_status'
wp option delete 'EXPERTREC_DB_OPTIONS_INDEX_VARIANTS'
wp option delete 'EXPERTREC_DB_OPTIONS_COMMUNICATION_EMAIL'
wp option delete 'EXPERTREC_DB_OPTIONS_COMMUNICATION_PHONE'
wp option delete 'EXPERTREC_DB_OPTIONS_INIT'
wp option delete 'EXPERTREC_DB_OPTIONS_AI_UI_ENABLED'
wp option delete 'EXPERTREC_DB_OPTIONS_READONLY_MODE'
wp option delete 'EXPERTREC_DB_OPTIONS_LOGGING_ENABLED'
wp option delete 'EXPERTREC_DB_OPTIONS_API_LOGGING_ENABLED'
wp option delete 'expertrec_plugin_do_activation_redirect'
wp option delete 'expertrec_debug_url'
wp option delete 'expertrec_options_RO'
wp option delete 'exp_ai_ui_enabled'
wp option delete 'exp_api_logging_enabled'
wp option delete 'exp_brand_taxonomy'
wp option delete 'exp_index_variants'
wp option delete 'exp_init'
wp option delete 'exp_last_successful_sync'
wp option delete 'exp_meta_keys'
wp option delete 'exp_readonly_mode'
wp option delete 'exp_selected_doc_types'
wp option delete 'exp_sentry_enabled'
wp option delete 'exp_logging_enabled'
wp option delete 'exp_subsequent_updates'
wp option delete 'exp_woocommerce_product_attributes'

# Delete Transients
wp transient delete 'exp_wc_attribute_taxonomies'
wp transient delete 'exp_meta_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
