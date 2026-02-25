#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'font_size_site_title'
wp option delete 'font_size_navigation'
wp option delete 'font_size_body'
wp option delete 'font_size_sidebar'
wp option delete 'font_size_footer'
wp option delete 'font_size_h1'

