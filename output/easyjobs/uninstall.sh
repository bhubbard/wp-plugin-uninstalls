#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easyjobs_analytics_connected'
wp option delete 'easyjobs_company_info'
wp option delete 'easyjobs_parent_page'
wp option delete 'easyjobs_settings'
wp option delete 'wpdeveloper_plugins_data'
wp option delete 'easyjobs_black_friday_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpins_block_notice'
wp option delete 'easyjobs_company_details'
wp option delete 'easyjobs_ai_setup'
wp option delete 'easyjobs_wp_pages'
wp option delete 'easyjobs_widgets_or_shortcode'

# Delete Transients
wp transient delete 'easyjobs_company_verification_status'
wp transient delete 'easyjobs_activation_redirect'
wp transient delete 'wpnotice_priority_time_expired'
wp transient delete 'easyjobs_state_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elej_company_%' OR option_name LIKE '_site_transient_elej_company_%'"
wp transient delete 'easyjobs_parent_creating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ej_block_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ej_block_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ej_block_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ej_block_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyjobs_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyjobs_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyjobs_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyjobs_job_id'"
