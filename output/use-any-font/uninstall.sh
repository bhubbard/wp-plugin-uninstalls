#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uaf_css_updated_timestamp'
wp option delete 'uaf_api_key'
wp option delete 'uaf_activated_url'
wp option delete 'uaf_hide_key'
wp option delete 'uaf_current_version'
wp option delete 'uaf_install_date'
wp option delete 'uaf_reviews_notice_hide'
wp option delete 'uaf_disbale_editor_font_list'
wp option delete 'uaf_font_data'
wp option delete 'uaf_font_implement'
wp option delete 'uaf_site_url'

# Delete Transients
wp transient delete 'uaf_css_write_error'
wp transient delete 'uaf_folder_create_error'

