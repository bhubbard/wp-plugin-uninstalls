#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_header_content_bytemantra'
wp option delete 'custom_footer_content_bytemantra'
wp option delete 'custom_header_content_status_bytemantra'
wp option delete 'custom_footer_content_status_bytemantra'
wp option delete 'custom_header_content_priority_bytemantra'
wp option delete 'custom_footer_content_priority_bytemantra'

