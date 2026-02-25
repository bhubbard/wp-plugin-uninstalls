#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shashin_permalinks-on'
wp option delete 'shashin_permalinks-title_on'
wp option delete 'shashin_permalinks-sociable_on'
wp option delete 'shashin_permalinks-key_album'
wp option delete 'shashin_permalinks-key_page'
wp option delete 'rewrite_rules'

