#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lightpost_api_key'
wp option delete 'lightpost_bible_class_registration_page_id'
wp option delete 'lightpost_directory_page_id'
wp option delete 'lightpost_directory_disclaimer'
wp option delete 'lightpost_sermon_archive_page_id'
wp option delete 'lightpost_theme'

