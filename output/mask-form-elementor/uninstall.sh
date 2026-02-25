#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-install-by'"
wp option delete 'fme-installDate'
wp option delete 'cfef-installDate'
wp option delete 'cfefp-installDate'
wp option delete 'ccfef-installDate'
wp option delete 'oldest_plugin'
wp option delete 'mask-form-install-by'
wp option delete 'cfkef_enabled_elements'
wp option delete 'cfkef_toggle_all'
wp option delete 'country_code'
wp option delete 'conditional_logic'
wp option delete 'form_input_mask'
wp option delete 'input_mask'
wp option delete 'cfkef_enable_elementor_pro_form'
wp option delete 'ccfef_plugin_initialized'
wp option delete 'ccfef_migrate_done'
wp option delete 'fme_plugin_initialized'
wp option delete 'fme_migrate_done'
wp option delete 'mfe_plugin_initialized'
wp option delete 'mfe_migrate_done'
wp option delete 'mfe-v'
wp option delete 'mfe-install-date'
wp option delete 'cfef_usage_share_data'
wp option delete 'cfef_formdb_marketing_dismissed
'
wp option delete 'mfe_marketing_dismissed'
wp option delete 'mfe_tec_notice_dismissed'
wp option delete 'cfef_formdb_marketing_dismissed'
wp option delete 'cpfm_opt_in_choice_cool_forms'
wp option delete 'cfkef_geo_provider'
wp option delete 'cfkef_country_code_api_key'
wp option delete 'cfkef_country_code_non_ipapi_api_key'
wp option delete 'cfefp_redirect_conditionally'
wp option delete 'cfefp_email_conditionally'
wp option delete 'cfefp_cdn_image'
wp option delete 'cfefp_cloudflare_site_key'
wp option delete 'cfefp_cloudflare_secret_key'
wp option delete 'cfefp_h_site_key'
wp option delete 'cfefp_h_secret_key'
wp option delete 'fme_elementor_notice_dismiss'
wp option delete 'mfe-installDate'
wp option delete 'mfe_migration_done'
wp option delete 'mfe_old_widget_id'
wp option delete 'mfe-type'

# Clear Cron Jobs
wp cron event delete 'mfe_extra_data_update'
wp cron event delete 'ccfef_extra_data_update'
wp cron event delete 'cfef_extra_data_update'
wp cron event delete 'cfefp_extra_data_update'
wp cron event delete 'fme_extra_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
