#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jmh_pew_page_excerpt_length'
wp option delete 'jmh_pew_page_id'
wp option delete 'jmh_pew_link_title'
wp option delete 'jmh_pew_append_link'
wp option delete 'jmh_pew_link_label'

