#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdlis_last_generated'
wp option delete 'wdlis_sig_index'
wp option delete 'wdlis_sig_index_full'
wp option delete 'wdlis_sig_index_json'
wp option delete 'wdlis_sig_images'
wp option delete 'wdlis_sig_images_md'
wp option delete 'wdlis_sig_images_jsonld'
wp option delete 'wdlis_options'

# Clear Cron Jobs
wp cron event delete 'wdlis_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wdlis_faq_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wdlis_faq_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wdlis_faq_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wdlis_faq_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wdlis_howto_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wdlis_howto_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wdlis_howto_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wdlis_howto_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
