#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pstwc_displayLocation'
wp option delete 'pstwc_wordCount'
wp option delete 'pstwc_characterCount'
wp option delete 'pstwc_readTime'
wp option delete 'pstwc_headlineText'

