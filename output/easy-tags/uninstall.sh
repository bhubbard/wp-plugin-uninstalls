#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_tags_insert_header'
wp option delete 'easy_tags_header_css'
wp option delete 'easy_tags_fb'
wp option delete 'easy_tags_gtm_head'
wp option delete 'easy_tags_gtm_footer'
wp option delete 'easy_tags_insert_footer'

