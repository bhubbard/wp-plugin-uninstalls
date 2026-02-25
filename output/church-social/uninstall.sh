#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'church_social_api_key'
wp option delete 'church_social_calendar_page_id'
wp option delete 'church_social_sermon_archive_page_id'
wp option delete 'church_social_theme'
wp option delete 'church_social_sermon_copyright_notice'

