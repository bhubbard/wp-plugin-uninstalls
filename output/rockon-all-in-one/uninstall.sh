#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'raio_act_hsf'
wp option delete 'raio_comment_dc'
wp option delete 'raio_bdc_separator'
wp option delete 'raio_insert_header'
wp option delete 'raio_insert_footer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'raio_insert_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'raio_insert_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'raio_insert_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'raio_insert_header'"
