#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_ajax_add_to_cart'

# Delete Transients
wp transient delete 'depicter_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'depicter/document/schedule/publish'
wp cron event delete 'depicter/document/schedule/draft'
wp cron event delete 'depicter/document/schedule/clear/cache'
wp cron event delete 'depicter_check_authorize'
wp cron event delete 'depicter_collect_usage_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_builder'"
