#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getwid_load_assets_on_demand'
wp option delete 'getwid_move_css_to_head'
wp option delete 'getwid_recaptcha_v2_site_key'
wp option delete 'getwid_recaptcha_v2_secret_key'
wp option delete 'getwid_contact_form_recipient_email'
wp option delete 'getwid_google_api_key'
wp option delete 'getwid_instagram_token'
wp option delete 'getwid_instagram_cache_timeout'
wp option delete 'getwid_mailchimp_api_key'
wp option delete 'audiences_list_chash'
wp option delete 'getwid_section_content_width'
wp option delete 'getwid_smooth_animation'
wp option delete 'getwid_instagram_token_cron_error_message'
wp option delete 'getwid_db_version'
wp option delete 'getwid_db_version_history'

# Delete Transients
wp transient delete 'getwid_instagram_response_data'
wp transient delete 'getwid_templates_response_data'

# Clear Cron Jobs
wp cron event delete 'getwid_refresh_instagram_token'

