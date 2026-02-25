#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vlbr_filter_target'
wp option delete 'vlbr_br_format'
wp option delete 'vlbr_insert_paragraph_tags'
wp option delete 'vlbr_shortcodes'

