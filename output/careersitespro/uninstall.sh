#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'careersitespro_token_%'"
wp option delete 'careersitespro_api'
wp option delete 'show_job_location'
wp option delete 'header_bg_color'
wp option delete 'header_title_color'
wp option delete 'button_bg_color'
wp option delete 'button_text_color'
wp option delete 'listing_subtitle_color'
wp option delete 'applicant_social_media_enable'
wp option delete 'employment_additional'
wp option delete 'department_additional'
wp option delete 'close_date_additional'
wp option delete 'show_pay_information'
wp option delete 'applicant_twitter_url'
wp option delete 'applicant_facebook_url'
wp option delete 'applicant_linkedin_url'
wp option delete 'applicant_instagram_url'
wp option delete 'listing_link_color'
wp option delete 'listing_hover_color'
wp option delete 'map_enable'
wp option delete 'cityzip_filter'
wp option delete 'employment_filter'
wp option delete 'country_filter'
wp option delete 'classification_filter'
wp option delete 'map_active_color'
wp option delete 'map_inactive_color'
wp option delete 'state_label'
wp option delete 'classification_label'

# Delete Transients
wp transient delete 'csp_data'

