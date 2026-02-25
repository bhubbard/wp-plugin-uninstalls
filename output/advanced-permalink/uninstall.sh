#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mng_post_type_permalinks'
wp option delete 'mng_page_permalinks'

