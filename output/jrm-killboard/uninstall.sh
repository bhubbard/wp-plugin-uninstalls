#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jrm_killboard_corporation_id'
wp option delete 'jrm_killboard_elements'
wp option delete 'jrm_killboard_be_elements'
wp option delete 'jrm_killboard_lastSync'
wp option delete 'jrm_killboard_esi_expires_in'
wp option delete 'jrm_killboard_esi_access_token'
wp option delete 'jrm_killboard_esi_refresh_token'
wp option delete 'jrm_killboard_killmail_error'
wp option delete 'jrm_killboard_killmail_log'
wp option delete 'jrm_killboard_fetch_start'
wp option delete 'jrm_killboard_esi_client_id'
wp option delete 'jrm_killboard_esi_client_secret'
wp option delete 'jrm_killboard_oauth_version'
wp option delete 'jrm_killboard_plugin_version'
wp option delete 'jrm_killboard_cronjob_endpoint'
wp option delete 'jrm_killboard_cronjob_secret'
wp option delete 'jrm_killboard_title'
wp option delete 'jrm_killboard_title_align'
wp option delete 'jrm_killboard_max_sync'
wp option delete 'jrm_killboard_font_size'
wp option delete 'jrm_killboard_image_size'
wp option delete 'jrm_killboard_margin'
wp option delete 'jrm_killboard_padding'
wp option delete 'jrm_killboard_kills_type'
wp option delete 'jrm_killboard_kills_bg'
wp option delete 'jrm_killboard_kills_text'
wp option delete 'jrm_killboard_deaths_bg'
wp option delete 'jrm_killboard_deaths_text'
wp option delete 'jrm_killboard_title_color'
wp option delete 'jrm_killboard_title_text'
wp option delete 'jrm_killboard_table_header_color'
wp option delete 'jrm_killboard_table_header_text'
wp option delete 'jrm_killboard_footer_color'
wp option delete 'jrm_killboard_footer_text'
wp option delete 'jrm_killboard_inspect_color'
wp option delete 'jrm_killboard_inspect_text'
wp option delete 'jrm_killboard_cols'
wp option delete 'jrm_killboard_dev_sign'
wp option delete 'jrm_killboard_btn_styles'
wp option delete 'jrm_killboard_btn_align'
wp option delete 'jrm_killboard_image_styles'
wp option delete 'jrm_killboard_last_page'
wp option delete 'jrm_killboard_inspect_items'
wp option delete 'jrm_killboard_price_error'
wp option delete 'jrm_killboard_price_log'
wp option delete 'jrm_killboard_esi_init_call'
wp option delete 'jrm_killboard_table_hedaer_text'

# Clear Cron Jobs
wp cron event delete 'jrm_killboard_cronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
