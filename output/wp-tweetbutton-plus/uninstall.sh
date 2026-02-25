#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptb_count'
wp option delete 'wptb_lang'
wp option delete 'wptb_via'
wp option delete 'wptb_related'
wp option delete 'wptb_related_desc'
wp option delete 'wptb_text'
wp option delete 'wptb_text_value'
wp option delete 'wptb_display_entry'
wp option delete 'wptb_display_page'
wp option delete 'wptb_display_home'
wp option delete 'wptb_position'

