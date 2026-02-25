#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ead_height'
wp option delete 'ead_width'
wp option delete 'ead_download'
wp option delete 'ead_text'
wp option delete 'ead_provider'
wp option delete 'ead_mediainsert'

